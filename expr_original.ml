(*  base type for the Abstract Syntax Tree of the rule-based language.
Allows later semantical processing of any kind, such like for instance,
checking consistency, safety or satisfiability, evaluating, printing, etc. *)
type expr = 
  	| Prog of stt list
and term =
	| Rel of rterm
	| Equal of string * int
	| Not of term
and rterm =
	| Pred of string * string list
and stt =
	| Rule of rterm * term list	
	| Query of rterm 				
(* to be continued... *)
;;

(* support function for smart stringify of the AST - see to_string below *)
let string_of_rterm r = match r with 	
	| Pred (x, [])		-> x ^ "()"
	| Pred (x, h::[]) 	-> x ^ "(" ^ h ^ ")"
	| Pred (x, h::t) 	-> x ^ "(" ^ h ^
	List.fold_right (fun s acc -> acc ^ "," ^ s) t "" ^ ")"
;;

(* support function for smart stringify of the AST - see to_string below *)
let rec string_of_term t = match t with 
	| Rel r			-> string_of_rterm r
	| Equal (s, i)	-> s ^ "=" ^ string_of_int i
	| Not t			-> "not " ^ string_of_term t
;;

(* support function for smart stringify of the AST - see to_string below *)
let string_of_stt st = match st with
	| Rule (p, [])		-> invalid_arg "string_of_stt: rule args are missing"
	| Rule (p, h::[])	-> string_of_rterm p ^ ":-" ^ string_of_term h ^ ".\n"
	| Rule (p, tel)		-> string_of_rterm p ^ " :- " ^ 
	List.fold_right (fun s acc -> acc ^ " and " ^ s) (List.map string_of_term tel) "" ^ ".\n"
	| Query r			-> "?- " ^ string_of_rterm r ^ ".\n"
;;

(* smart stringify for AST *)
let to_string e = match e with
	| Prog [] 		-> invalid_arg "to_string"
  	| Prog stl		-> List.fold_right (^) (List.map string_of_stt stl) ""
;;

