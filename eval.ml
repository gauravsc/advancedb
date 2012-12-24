(** AST processing functions are defined here, including sql_stt *)
 
open Expr ;;
open Str ;;
exception Eof ;;



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
	| Equal	(s, i) -> s
	| LessThan (s,i) -> s
	| GreaterThan (s,i) -> s
	| LessOrEqual (s,i) -> s
	| GreaterOrEqual (s,i) -> s
	| Not t			-> get_predname t
;;

(* get the list of variables of a term *)
let rec get_varlist t = match t with
	| Rel r			-> ( match r with
							| Pred (x, vl) -> vl
						)
	| Equal	(s, i)	-> s :: []
	| LessThan (s, i) -> s :: []
	| GreaterThan (s, i) -> s :: []
	| LessOrEqual (s, i) -> s :: []
	| GreaterOrEqual (s, i) -> s :: []
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
  NOT FINISHED 
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
*)


(* The purpose of this function is to retrieve a string that would act as WHERE clause in final SELECT statement. So far it covers only equalities based on joins between the predicates i.e. tables 

Function compares one term e1 with a list of terms l2 and on each match builds a string of form s1.a_r = s2.a_k where, s1 is a predicate of term e1 and s2 is a  predicate of the head of list l2 and r and k are indexes, where r is input parameter which doesn't change (its purpose comes from next function) while k is index which "moves along" list l2. Each string is concateneted to other by an " and " and when head of list is searches, the same function is applied recursively to the tail etc.

*)


(* get value of a term *)
let rec get_value t = match t with
	| Equal	(s, i)	-> string_of_int i
	| LessThan (s, i) 	-> string_of_int i
	| GreaterThan (s, i) 	-> string_of_int i
	| LessOrEqual (s, i) 	-> string_of_int i
	| GreaterOrEqual (s, i) 	-> string_of_int i
	| _ -> ""
;;


(* get type of term: 1 - Rel, 2 - Equal, 3 - Not *)
let get_termtype t = match t with
	| Rel r			-> "relation"
	| Equal	(s, i)		-> "equality"
	| LessThan (s, i) 	-> "LessThan"
	| GreaterThan (s, i) 	-> "GreaterThan"
	| LessOrEqual (s, i) 	-> "LessOrEqual"
	| GreaterOrEqual (s, i) -> "GreaterOrEqual"
	| Not t			-> "negation"
;;


let is_boolean t = match t with
	| Rel r			-> false
	| Equal	(s, i)		-> true
	| LessThan (s, i) 	-> true
	| GreaterThan (s, i) 	-> true
	| LessOrEqual (s, i) 	-> true
	| GreaterOrEqual (s, i) -> true
	| Not t			-> false
;;


let is_constant const = try ignore (Str.search_forward (Str.regexp "['\"'][a-z]+['\"']") const 0); 1 
			with Not_found -> 0
;;



let get_boolean_sign tp = match tp with
	| "equality" -> "="
	| "LessThan" -> "<"
	| "GreaterThan" -> ">"
	| "LessOrEqual" -> "<="
	| "GreaterOrEqual" -> ">="
;;


let rec find_i s1 e1 tp1 s2 l2 tp2 r k =
     match l2 with [] -> ""
       	  | h2::t2 -> (match tp1 with 
			"relation" -> (match tp2 with 
				("relation"|"negation") -> 
				       (if is_constant h2 = 1 
				       then s2 ^ ".a" ^ string_of_int k ^ "=" ^ h2 ^ 
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
		                       else if String.compare e1 h2 = 0 
				       then s1 ^ ".a" ^ string_of_int r ^ "=" ^ s2 ^ ".a" ^ string_of_int k ^ 
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))
				|("equality"|"LessThan"|"GreaterThan"|"LessOrEqual"|"GreaterOrEqual") -> 
		                       (if String.compare e1 h2 = 0 
				       then s1 ^ ".a" ^ string_of_int r ^ (get_boolean_sign tp2) ^ "'" ^ s2 ^ "'" ^
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))	
				)
			|("equality"|"LessThan"|"GreaterThan"|"LessOrEqual"|"GreaterOrEqual") -> (match tp2 with 
				("relation"|"negation") -> 
		                       (if String.compare e1 h2 = 0 
				       then s2 ^ ".a" ^ string_of_int k ^ (get_boolean_sign tp1) ^ "'" ^ s1 ^ "'" ^
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))
				|("equality"|"LessThan"|"GreaterThan"|"LessOrEqual"|"GreaterOrEqual") -> 
		                       (if String.compare e1 h2 = 0 
				       then 
					  (if (s1 != s2) then "error" else  find_i s1 e1 tp1 s2 t2 tp2 r (k+1))
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))
				)
			|"negation" -> (match tp2 with 
				("relation"|"negation") -> 
		                       (if is_constant h2 = 1 
				       then s2 ^ ".a" ^ string_of_int k ^ "=" ^ h2 ^ 
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
		                       else if String.compare e1 h2 = 0 
				       then s1 ^ ".a" ^ string_of_int r ^ "=" ^ s2 ^ ".a" ^ string_of_int k ^ 
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))
				|("equality"|"LessThan"|"GreaterThan"|"LessOrEqual"|"GreaterOrEqual") -> 
		                       (if String.compare e1 h2 = 0 
				       then s1 ^ ".a" ^ string_of_int r ^ (get_boolean_sign tp2) ^ "'" ^ s2 ^ "'" ^ 
						(if String.compare (find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) "" != 0 
				         	then " and "^(find_i s1 e1 tp1 s2 t2 tp2 r (k+1)) 
					 	else find_i s1 e1 tp1 s2 t2 tp2 r (k+1) ) 
				       else find_i s1 e1 tp1 s2 t2 tp2 r (k+1))	
				)
);;



let rec find_intersection s1 l1 tp1 s2 l2 tp2 r =
     match l1 with [] -> []
       | h1::t1 ->  (match l2 with [] -> []
       				 | h2::t2 -> (if is_constant h1 = 1 then (s1 ^ ".a" ^ string_of_int r ^ "=" ^ h1) :: find_intersection s1 t1 tp1 s2 l2 tp2 (r+1)
				       	      else if String.compare (find_i s1 h1 tp1 s2 l2 tp2 r 0) "" !=0 
      					      	   then find_i s1 h1 tp1 s2 l2 tp2 r 0 :: find_intersection s1 t1 tp1 s2 l2 tp2 (r+1)
					      	   else find_intersection s1 t1 tp1 s2 l2 tp2 (r+1))
                     );; 


(* koristim trik za terme oblika EQUAL tako sto u ime predikata zapravo cuvam vrijednost varijable*)
let rec inner_extract e1 l2 = match l2 with
	| [] -> []
	| h::t -> 
	     (if (is_boolean e1) && (is_boolean h)
	     then List.append (find_intersection (get_value e1) (get_varlist e1) (get_termtype e1) (get_value h) (get_varlist h) (get_termtype h) 0) (inner_extract e1 t)
	     else if is_boolean e1
	     then List.append (find_intersection (get_value e1) (get_varlist e1) (get_termtype e1) (get_predname h) (get_varlist h) (get_termtype h) 0) (inner_extract e1 t)	
	     else if is_boolean h
	     then List.append (find_intersection (get_predname e1) (get_varlist e1) (get_termtype e1) (get_value h) (get_varlist h) (get_termtype h) 0) (inner_extract e1 t)
	     else if get_termtype e1 = "negation" && get_termtype h != "negation"
	     then ("not exists (select 1 from " ^ get_predname e1 ^ " where " ^ (String.concat " and " (find_intersection (get_predname e1) (get_varlist e1) (get_termtype e1) (get_predname h) (get_varlist h) (get_termtype h) 0)) ^ ")") :: (inner_extract e1 t)
	     else if get_termtype e1 != "negation" && get_termtype h = "negation"
	     then ("not exists (select 1 from " ^ (get_predname h) ^ " where " ^ (String.concat " and " (find_intersection (get_predname e1) (get_varlist e1) (get_termtype e1) (get_predname h) (get_varlist h) (get_termtype h) 0)) ^ " )") :: (inner_extract e1 t) 
	     else List.append (find_intersection (get_predname e1) (get_varlist e1) (get_termtype e1) (get_predname h) (get_varlist h) (get_termtype h) 0) (inner_extract e1 t)	     
);;


let rec outer_extract l = match l with
	| [] -> []
	| h::t -> List.append (outer_extract t) (inner_extract h t);;
	


(* following three functions are used only for idb's in order to avoid equalities in matching string... 
-> so this is used to generate columns that will be output *)

let rec idb_find_i s1 vh1 s2 l2 tp2 k =
     match l2 with [] -> ""
       	  | h2::t2 -> (match tp2 with 
				"relation" -> 
		                       (if String.compare vh1 h2 = 0 
				        then s2 ^ ".a" ^ string_of_int k  
                      		        else idb_find_i s1 vh1 s2 t2 tp2 (k+1))
				|("equality"|"LessThan"|"GreaterThan"|"LessOrEqual"|"GreaterOrEqual") -> ""
				|"negation" -> ""
			);;


let rec idb_find_intersection vh1 s1 l2 =
     match l2 with [] -> []
       	  | hl1::hl2 -> (if (String.compare (idb_find_i s1 vh1 (get_predname hl1) (get_varlist hl1) (get_termtype hl1) 0) "") !=0 then idb_find_i s1 vh1 (get_predname hl1) (get_varlist hl1) (get_termtype hl1) 0 :: [] else idb_find_intersection vh1 s1 hl2);;
 

let rec idb_inner_extract e1 vh l2 = match vh with
	| [] -> []
	| vh1 :: vh2 -> List.append (idb_find_intersection vh1 (get_predname e1) l2) (idb_inner_extract e1 vh2 l2);;

(* end of - following three functions are used only for idb's in order to avoid equalities in matching string... *)



(* this is used for creating FROM part of SQL statement, hence we skip all predicates that belong to equalities - 30/11/2012 *)
let rec get_predname_termlist term_list = match term_list with
		| [] -> []
		| t::m -> ( if (get_termtype t) = "relation" then List.append (get_predname_termlist m) ((get_predname t)::[]) else (get_predname_termlist m));;


(*
old version:
( if (get_termtype t) = "relation" then (get_predname t) :: (get_predname_termlist m) else (get_predname_termlist m));;
*)



let rec attribute_name_head q i = match q with
	| 0 -> [] 
	| m -> (("a" ^ string_of_int (i-q) ):: attribute_name_head (q-1) i)
;; 


let rec check_predicate a pr = match a with 
        | [] -> 0
	| h::t -> if (h=pr) then 1 else check_predicate t pr
;;



let rec is_recursive r t = match t with
	| [] -> false
	| head::tail -> if (get_predname (Rel r)) = (get_predname head) then true else (is_recursive r tail)
;;


let rec rename_predicate_in_body l old_name = match l with
	| [] -> []
	| h::t -> if get_predname h = old_name then Rel (Pred ((old_name ^ "_rec_temp"), get_varlist h)) :: (rename_predicate_in_body t old_name) else h :: (rename_predicate_in_body t old_name);;


let rename_predicate_in_head r old_name = match (get_predname (Rel r)) with 
					   | old_name -> Rel (Pred ((old_name ^ "_rec_temp"), get_varlist (Rel r)))
					   | _ -> Rel r
;;


let remove_elt e l =
  let rec go l acc = match l with
	| [] -> List.rev acc
	| x::xs when e = x -> go xs acc
	| x::xs -> go xs (x::acc)
  in go l []

let remove_duplicates l =
  let rec go l acc = match l with
	| [] -> List.rev acc
	| x :: xs -> go (remove_elt x xs) (x::acc)
  in go l []


(* This function filters all RULE statements and for each of them creates SELECT query to be executed, using previously defined 
  idb_inner_extract and outer_extract functions *)


let process_rule e = match e with
	| Prog sttl	-> let a = ref [] in ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Rule (r, t) 	-> if (check_predicate (!a) (get_predname (Rel r)) = 0) then 
						(a := ((get_predname (Rel r)) :: (!a));
						"drop view if exists " ^ (get_predname (Rel r)) ^ "; create view " ^ (get_predname (Rel r)) ^ "(" ^ 
(String.concat "," (attribute_name_head (List.length (get_varlist (Rel r))) (List.length (get_varlist (Rel r))) )) ^ ") as select " ^ (String.concat "," (idb_inner_extract (Rel r) (get_varlist (Rel r)) t)) ^ " from " ^ 
(String.concat "," (remove_duplicates (get_predname_termlist t))) ^ (if outer_extract t != [] then " where " ^ (String.concat " and " (outer_extract t)) else "")^";";)
					   else if is_recursive r t then
						"create view " ^ (get_predname (Rel r)) ^ "_rec_temp_2 as (with recursive "  ^ (get_predname (Rel r)) ^ "_rec_temp(" ^ 
(String.concat "," (attribute_name_head (List.length (get_varlist (Rel r))) (List.length (get_varlist (Rel r))) )) ^ ") as (" ^
"select * from " ^ (get_predname (Rel r)) ^ " union all select " ^ (String.concat "," (idb_inner_extract (rename_predicate_in_head r (get_predname (Rel r))) (get_varlist (rename_predicate_in_head r (get_predname (Rel r)))) (rename_predicate_in_body t (get_predname (Rel r))) )) ^ " from " ^ (String.concat "," (remove_duplicates (get_predname_termlist (rename_predicate_in_body t (get_predname (Rel r)))))) ^ (if outer_extract (rename_predicate_in_body t (get_predname (Rel r))) != [] then " where " ^ (String.concat " and " (outer_extract (rename_predicate_in_body t (get_predname (Rel r))))) else "") ^ ") \n select * from " ^ (get_predname (Rel r)) ^ "_rec_temp); \n drop table if exists " ^ (get_predname (Rel r)) ^ "_tbl_temp_2; create table " ^ (get_predname (Rel r)) ^ "_tbl_temp_2 as select * from " ^ (get_predname (Rel r)) ^ "_rec_temp_2; \n drop view " ^ (get_predname (Rel r)) ^ "_rec_temp_2 cascade; \n create or replace view " ^ (get_predname (Rel r)) ^ " as select * from " ^ (get_predname (Rel r)) ^ "_tbl_temp_2;"
					   else if List.length (idb_inner_extract (Rel r) (get_varlist (Rel r)) t) = List.length (get_varlist (Rel r)) then
						  (* "SET client_min_messages TO WARNING;" ^ *)
						  "create table " ^ (get_predname (Rel r)) ^ "_tbl as select * from " ^ (get_predname (Rel r)) 							 ^ "; create or replace view " ^ (get_predname (Rel r)) ^ " as select * from " ^ 
						 (get_predname (Rel r)) ^ "_tbl union all select " ^ (String.concat "," (idb_inner_extract (Rel r) (get_varlist (Rel r)) t)) ^ " from " ^ 
(String.concat "," (remove_duplicates (get_predname_termlist t))) ^ (if outer_extract t != [] then " where " ^ (String.concat " and " (outer_extract t)) else "") ^
"; drop table if exists " ^ (get_predname (Rel r)) ^ "_tbl_temp; create table " ^ (get_predname (Rel r)) ^ "_tbl_temp as select * from " ^ (get_predname (Rel r)) ^ "; drop table " ^ (get_predname (Rel r)) ^ "_tbl cascade; create view " ^ (get_predname (Rel r)) ^ " as select * from " ^ (get_predname (Rel r)) ^ "_tbl_temp;"
						else "error -> incompatible number of arguments in head and body";
			| Query q 	-> "select * from " ^ (get_predname (Rel q))  ^ ";"
			| _				-> invalid_arg "get_idb"
		) (List.rev (List.filter (fun r -> match r with
									| Rule (_, _) 	-> true 
									| Query _ 	-> true 
									| _ 			-> false) sttl))) [] 
	)
;;



(*


let process_rule e = match e with
	| Prog sttl	-> let a = Array.make in ( List.fold_right (fun s acc -> s::acc) (List.map (fun sl ->
		match sl with 
			| Rule (r, t) 	-> "create or replace view " ^ (get_predname (Rel r)) ^ "(" ^ (String.concat "," (attribute_name_head (List.length (get_varlist (Rel r))) (List.length (get_varlist (Rel r))) )) ^ ") as select " ^ (String.concat "," (idb_inner_extract (Rel r) (get_varlist (Rel r)) t)) ^ " from " ^ 								    (String.concat "," (get_predname_termlist t)) ^ (if outer_extract t != [] then " where " ^ (String.concat " and " (outer_extract t)) else "")
			| _				-> invalid_arg "get_idb"
		) (List.filter (fun r -> match r with
									| Rule (_, _) 	-> true 
									| _ 			-> false) sttl)) []
	)
;;

*)


let sql_stt e =  String.concat " " (process_rule e);;




