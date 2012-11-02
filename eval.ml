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
let is_prog e = is_single e && ( let qname = 
								get_predname (match (get_query e) with 
								Query p -> Rel p | _ -> invalid_arg "is_prog") in
								List.mem qname (get_idb's e) )
;;

(* generate SQL statement from the ast *)
let sql_stt e = "select * from test;" (* FIXME *)
;;