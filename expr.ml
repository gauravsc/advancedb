(*  base type for the Abstract Syntax Tree of the rule-based language.
Allows later semantical processing of any kind, such like for instance,
checking consistency, safety or satisfiability, evaluating, printing, etc. *)
type expr = 
  	| Prog of stt list
and term =
	| Rel of rterm
	| Equal of string * string
	| LessThan of string * string
	| GreaterThan of string * string
	| LessOrEqual of string * string
	| GreaterOrEqual of string * string
	| Not of term
and rterm =
	| Pred of string * string list
and const = 
	| FactPred of string * string list 
and stt =
	| Fact of rterm
	| Rule of rterm * term list	
	| Query of rterm 				
(* to be continued... *)
;;

(* support function for smart stringify of the AST - see to_string below *)
let string_of_rterm r = match r with 	
	| Pred (x, [])		-> x ^ "()"
	| Pred (x, h::[]) 	-> x ^ "(" ^ h ^ ")"
	| Pred (x, h::t) 	-> x ^ "(" ^ h ^
	List.fold_left (fun s acc -> s ^ "," ^ acc) "" t ^ ")"

(*  promijenila Sandra 30/11/2012 jer inicijalna funkcija koju je dao prof. nije dobro vracala elemente liste (permutovala ih je) 
	List.fold_right (fun s acc -> acc ^ "," ^ s) t "" ^ ")" 

*)
;;


(* support function for smart stringify of the AST - see to_string below *)
let rec string_of_term t = match t with 
	| Rel r			-> string_of_rterm r
	| Equal (s, i)		-> s ^ "=" ^ i
	| LessThan (s, i)	-> s ^ "<" ^ i
	| GreaterThan (s, i)	-> s ^ ">" ^ i
	| LessOrEqual (s, i)	-> s ^ "<=" ^ i
	| GreaterOrEqual (s, i)	-> s ^ ">=" ^ i
	| Not t			-> "not " ^ string_of_term t
;;

(* support function for smart stringify of the AST - see to_string below *)
let string_of_stt st = match st with
	| Fact r		-> string_of_rterm r ^ ".\n"
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

