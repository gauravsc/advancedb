
  /* ADB Project. Datalog intepreter. */
  /* Source: X. Leroy, J. Cohen and G. Raschia */

%{ (* OCaml preamble *)

  open Expr ;;

   (* end preamble *)
 %}
  

/* tokens declaration */


%token <string> VAL           /* token with string value    */
%token <string> RELNAME       /* token with string value */
%token <string> VARNAME         /* token with string value */
  
%token QMARK DOT IMPLIEDBY
%token AND NOT
%token EQ LT GT LE GE
%token LPAREN RPAREN SEP
%token EOP
%token ANON   /* fake token to stop the grammar in the fact rule */


/* associativity and precedence when needed */
%nonassoc IMPLIEDBY


%start main               /*  entry point    */
%type <Expr.expr> main
%%

/* Grammar */
  main: EOP								{ failwith "main: where's my program?!"}
  | program EOP                         { Prog $1  }
  ;
  
  program: 
  exprlist								{ $1 }
  ;

  exprlist:
  | expr								{ $1 :: []  }
  | exprlist expr 						{ $2 :: $1 }
  ;

  expr: 
  | rule	                            { $1 }
  | query	                            { $1 }
  | fact				    { $1 }
  ;
  
  
  rule:
  head IMPLIEDBY body DOT				{ Rule ($1,$3) }
  ; 

  head:
  predicate								{ $1 }
  ;

  body:
  litlist								{ $1 }
  ;

  query:
  | QMARK predicate DOT					{ Query $2 } 
  ;

  litlist: /* empty */					{ [] }
  | literal								{ $1 :: [] }
  | litlist AND literal					{ $3 :: $1 }
  ;

  literal:
  | predicate							{ Rel $1 }
  | NOT predicate 						{ Not (Rel $2) }
  | equality							{ $1 }
  | lessThanInequality						{ $1 }
  | greaterThanInequality					{ $1 }
  | lessOrEqualInequality					{ $1 }
  | greaterOrEqualInequality					{ $1 }
  | NOT equality					    { Not $2 }
  ;

  predicate:
  RELNAME LPAREN termlist RPAREN		{ Pred ($1, $3) }
  ;

  equality:	
  VARNAME EQ VAL					{ Equal ($1, $3) }


  lessThanInequality:	
  VARNAME LT VAL						{ LessThan ($1, $3) }

  greaterThanInequality:	
  VARNAME GT VAL						{ GreaterThan ($1, $3) }

  lessOrEqualInequality:	
  VARNAME LE VAL						{ LessOrEqual ($1, $3) }

  greaterOrEqualInequality:	
  VARNAME GE VAL						{ GreaterOrEqual ($1, $3) }

  termlist: /* empty */					{ [] }
  | term								{ $1 :: [] }
  | term SEP termlist					{ $1 :: $3 } /* \!/ rec. on the right */

  term:
  |VARNAME							{ $1 }
  |VAL								{ $1 }
  ;

  fact:
  | predicate DOT					{ Fact $1 } 
  ;

