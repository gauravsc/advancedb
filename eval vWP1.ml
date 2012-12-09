(** AST processing functions are defined here, including sql_stt *)
 
open Expr ;;

(* get the query expression *)
let get_query e = match e with
	| Prog sttl	-> ( let lq = ( List.filter (fun r -> match r with
													| Query _ -> true 
													| _ -> false) sttl ) in
					match lq with 
						| [] 	-> failwith "error: there is no query"
						| h::[]	-> h
						| h::_ -> failwith "error: there are too many queries"
					)
;;

(* get the predicate name of a term *)
let rec get_predname t = match t with
	| Rel r			-> ( match r with
							| Pred (x, vl) -> x 
						)
	| Equal	(s, i)	-> s
	| Not t			-> get_predname t
;;

(* get the list of variables of a term *)
let rec get_varlist t = match t with
	| Rel r			-> ( match r with
							| Pred (x, vl) -> vl
						)
	| Equal	(s, i)	-> s :: []
	| Not t			-> get_varlist t
;;

(* check for one single query in the program *)
let is_single e = ignore (get_query e); true
;;

(* retrieve idb's names in a string list *)
let get_idb's e = match e with
	| Prog sttl	-> ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Rule (r, t) 	-> get_predname (Rel r)
			| _				-> invalid_arg "get_idb"
		) (List.filter (fun r -> match r with
									| Rule (_, _) 	-> true 
									| _ 			-> false) sttl)) []
	)
;;


(* check for:
 - query being an idb predicate
 - single output program (one and only one query)
 - [valid rules (idb and edb definitions with schemes)]
 - [safe rules]
 - [to be continued...]
*)

(* get the list of terms of an expr *)
let get_termlist sttmt = match sttmt with
	| Fact r     -> []
	| Rule (k,l) -> l
	| Query q    -> []
;;

(*get list of statements of an expression *)
let rec get_sttlist e = match e with   
	| Prog l -> l 
;;   


let get_rtermlist r =  match r with			 
			| Pred (x, vl) -> vl
;;


let is_prog e = is_single e && ( let qname = 
								get_predname (match (get_query e) with 
								Query p -> Rel p | _ -> invalid_arg "is_prog") in
								List.mem qname (get_idb's e) )
;;



(* This function returns a list of terms for a given list of statements. It does so by recursively traversing list extracting first 
list of terms that corresponds to head and then recursively applying it again on tail *)

let rec def stt_list = match stt_list with
		| [] -> []
		| t::m -> List.append (get_termlist(t)) (def(m));;

(* This function returns a list of variables for a given list of terms. It does so by recursively traversing list extracting first 
predicate name and the list of variables that corresponds to head and then recursively applying it again on tail *)

let rec abc term_list = match term_list with
		| [] -> []
		| t::m -> (get_predname(t) ::(",":: (List.append (get_varlist(t)) (abc(m))))) ;;
 

(* This function filters all FACT statements  
  NOT FINISHED *)
let process_fact e = match e with
	| Prog sttl	-> ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Fact r -> (*"drop table if exists " ^ get_predname (Rel r) ^ "; " ^ 
				    "create table " ^ get_predname (Rel r) ^ " ( " ^ (String.concat "," (get_rtermlist (r))) ^ " ); " ^*)
				     "insert into " ^ get_predname (Rel r) ^ " values ( '" ^ (String.concat "','" (get_rtermlist (r))) ^ "');"
			| _				-> invalid_arg "get_idb"
		) (List.filter (fun r -> match r with
									| Fact _ 	-> true 
									| _ 			-> false) sttl)) []
	)
;;



(* The purpose of this function is to retrieve a string that would act as WHERE clause in final SELECT statement. So far it covers only equalities based on joins between the predicates i.e. tables 

Function compares one term e1 with a list of terms l2 and on each match builds a string of form s1.a_r = s2.a_k where, s1 is a predicate of term e1 and s2 is a  predicate of the head of list l2 and r and k are indexes, where r is input parameter which doesn't change (its purpose comes from next function) while k is index which "moves along" list l2. Each string is concateneted to other by an " and " and when head of list is searches, the same function is applied recursively to the tail etc.

*)

let rec find_i s1 e1 s2 l2 r k =
     match l2 with [] -> ""
       	  | h2::t2 -> (if String.compare e1 h2 = 0 
		       then s1 ^ ".a" ^ string_of_int r ^ "=" ^ s2 ^ ".a" ^ string_of_int k ^ 
					(if String.compare (find_i s1 e1 s2 t2 r (k+1)) "" != 0 
				         then " and "^(find_i s1 e1 s2 t2 r (k+1)) 
					 else find_i s1 e1 s2 t2 r (k+1) ) 
                       else find_i s1 e1 s2 t2 r (k+1));;


let rec find_intersection s1 l1 s2 l2 r =
     match l1 with [] -> []
       | h1::t1 ->  (match l2 with [] -> []
       				 | h2::t2 -> (if String.compare (find_i s1 h1 s2 l2 r 0) "" !=0 then find_i s1 h1 s2 l2 r 0 :: find_intersection s1 t1 s2 l2 (r+1) else find_intersection s1 t1 s2 l2 (r+1)));; 


let rec inner_extract e1 l2 = match l2 with
	| [] -> []
	| h::t -> List.append (find_intersection (get_predname e1) (get_varlist e1) (get_predname h) (get_varlist h) 0) (inner_extract e1 t);;


let rec outer_extract l = match l with
	| [] -> []
	| h::t -> List.append (outer_extract t) (inner_extract h t);;
	


(* following three functions are used only for idb's in order to avoid equalities in matching string... *)

let rec idb_find_i s1 e1 s2 l2 r k =
     match l2 with [] -> ""
       	  | h2::t2 -> (if String.compare e1 h2 = 0 
		       then s2 ^ ".a" ^ string_of_int k  
                       else idb_find_i s1 e1 s2 t2 r (k+1));;


let rec idb_find_intersection s1 l1 s2 l2 r =
     match l1 with [] -> []
       | h1::t1 ->  (match l2 with [] -> []
       				 | h2::t2 -> (if String.compare (idb_find_i s1 h1 s2 l2 r 0) "" !=0 then idb_find_i s1 h1 s2 l2 r 0 :: idb_find_intersection s1 t1 s2 l2 (r+1) else idb_find_intersection s1 t1 s2 l2 (r+1)));; 


let rec idb_inner_extract e1 l2 = match l2 with
	| [] -> []
	| h::t -> List.append (idb_find_intersection (get_predname e1) (get_varlist e1) (get_predname h) (get_varlist h) 0) (idb_inner_extract e1 t);;

(* end of - following three functions are used only for idb's in order to avoid equalities in matching string... *)




let rec get_predname_termlist term_list = match term_list with
		| [] -> []
		| t::m -> get_predname(t) :: (get_predname_termlist m);;



(* This function filters all RULE statements and for each of them creates SELECT query to be executed, using previously defined 
  idb_inner_extract and outer_extract functions *)

let process_rule e = match e with
	| Prog sttl	-> ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Rule (r, t) 	-> "select " ^ (String.concat "," (idb_inner_extract (Rel r) t)) ^ " from " ^ (String.concat "," (get_predname_termlist t)) ^ (if outer_extract t != [] then " where " ^ (String.concat " and " (outer_extract t)) else "")
			| _				-> invalid_arg "get_idb"
		) (List.filter (fun r -> match r with
									| Rule (_, _) 	-> true 
									| _ 			-> false) sttl)) []
	)
;;

 
let sql_stt e =  String.concat " " (process_rule e);;







(* SMALL CODE PARTS USED FOR TESTING PURPOSES - NOT RELEVANT FOR WP1 DELIVERABLES ASSESSMENT

let sql_stt e= match e with

    |Prog l-> String.concat " " (abc (def l));;

--------------

let xyz = Equal ("abc",3);;
let sql_stt e = String.concat " " (get_varlist xyz) ;;


---------------

(*let sql_stt e= String.concat " and " (find_intersection "R" ["s";"t";"z";"a";"b"] "S" ["k";"l";"s";"m";"s";"b";"d"] 0); *)


---------------


(*let do_fact r = match r with 
	| Pred (x,y) -> "create table " ^ x ^ "(" ^ String.concat "," y ^ ");";; 
*)

---------------


(*

let sql_stt e = String.concat " " (List.map (String.concat " ") (process_rule e));;
let statement_list e = get_sttlist e;;

let statement_list = get_varlist (List.map (get_termlist) s) 
;;


let statement_list = s in 
for i = 0 to 1 do
    let term_list = get_termlist (List.nth statement_list i) in 
	for j = 0 to 1 do
    		let var_list = get_varlist (List.nth term_list j) in String.concat " " (var_list) ;
  	done;
done) -> 
;;
*)

(* let sql_stt e = statement_list e; *)

---------------


let process_rule e = match e with
	| Prog sttl	-> ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Rule (r, t) 	-> get_predname (Rel r) ^ " " ^ (String.concat " " (get_rtermlist (r))) ^ ";;; " ^ (String.concat " " (abc t))
			| _				-> invalid_arg "get_idb"
		) (List.filter (fun r -> match r with
									| Rule (_, _) 	-> true 
									| _ 			-> false) sttl)) []
	)
;;
---------------


(*


let get_predname_head_termlist term_list = match term_list with
		| [] -> ""
		| t::m -> get_predname(t);;


let process_termlist_list list1 termlist_list = 
	match list1 with
		| [] -> []
		| t::m ->  (match List.hd termlist_list with 
				| [] -> [] 
				| k::l -> (List.map (fun lx -> (find_intersection (get_predname_head_termlist list1) (abc list1) (get_predname_head_termlist lx) (abc lx) 0)) termlist_list
))
;;


let rec process_termlist_list_f termlist_list = match List.hd termlist_list with 
				| [] -> [] 
				| k::l -> (List.append (process_termlist_list k l) (process_termlist_list_f l))
;;
*)
*) 


