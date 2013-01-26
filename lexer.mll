 {
        open Parser        (* The type token is defined in parser.mli *)
(*		exception Eof
*)
 }

  rule token = parse
      [' ' '\t']     				{ token lexbuf }     (* skip blanks *)
    | ['\n' ]        				{ token lexbuf }     (* skip newline *)
    | "yadi>"					{ token lexbuf }     (* skip prompt info *)
    | ['A'-'Z']['a'-'z']* as lxm 	        { RELNAME(lxm) }
    | (['\''](['A'-'Z']|['a'-'z']|['0'-'9'])+['\''])|(['0'-'9']+) as lxm	{VAL(lxm)}
    | (['a'-'z']|'_')+ as lxm 			{ match lxm with
										| "and" -> AND
										| "not" -> NOT (* 06/12/2012 *)
										| "NOT" -> NOT (* 06/12/2012 *)				
										| _ 	-> VARNAME(lxm)
									}
    | ":-"          				{ IMPLIEDBY }
    | "?-"            				{ QMARK }  (* query mark *)
    | '.'            				{ DOT }    (* end of rule or query *)
    | ','            				{ SEP }
    | '('            				{ LPAREN }
    | ')'            				{ RPAREN }
    | '='            				{ EQ }
    | '<'            				{ LT }
    | '>'            				{ GT }
    | "<="            				{ LE }
    | ">="            				{ GE }
    | '/'            				{ EOP }	
