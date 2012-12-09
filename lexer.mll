 {
        open Parser        (* The type token is defined in parser.mli *)
(*		exception Eof
*)
 }

  rule token = parse
      [' ' '\t']     				{ token lexbuf }     (* skip blanks *)
    | ['\n' ]        				{ token lexbuf }     (* skip newline *)
    | "yadi>"					{ token lexbuf }     (* skip prompt info *)
    | ['0'-'9']+ as lxm 			{ VAL(int_of_string lxm) }
    | ['A'-'Z']['a'-'z']* as lxm 	        { RELNAME(lxm) }
    | ['a'-'z']+ as lxm 			{ match lxm with
										| "and" -> AND
										| "not" -> NOT (* 06/12/2012 *)
										| "NOT" -> NOT (* 06/12/2012 *)				
										| _ 	-> VARNAME(lxm)
									}
    | ['\"']['a'-'z']+['\"'] as cons		{ CONSTANT(cons) } (* 06/12/2012 *)
    | ":-"          				{ IMPLIEDBY }
    | "?-"            				{ QMARK }  (* query mark *)
    | '.'            				{ DOT }    (* end of rule or query *)
    | ','            				{ SEP }
    | '('            				{ LPAREN }
    | ')'            				{ RPAREN }
    | '='            				{ EQ }
    | '/'            				{ EOP }	
