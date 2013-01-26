type token =
  | VAL of (string)
  | RELNAME of (string)
  | VARNAME of (string)
  | QMARK
  | DOT
  | IMPLIEDBY
  | AND
  | NOT
  | EQ
  | LT
  | GT
  | LE
  | GE
  | LPAREN
  | RPAREN
  | SEP
  | EOP
  | ANON

open Parsing;;
let _ = parse_error;;
# 5 "parser.mly"
 (* OCaml preamble *)

  open Expr ;;

   (* end preamble *)
 
# 31 "parser.ml"
let yytransl_const = [|
  260 (* QMARK *);
  261 (* DOT *);
  262 (* IMPLIEDBY *);
  263 (* AND *);
  264 (* NOT *);
  265 (* EQ *);
  266 (* LT *);
  267 (* GT *);
  268 (* LE *);
  269 (* GE *);
  270 (* LPAREN *);
  271 (* RPAREN *);
  272 (* SEP *);
  273 (* EOP *);
  274 (* ANON *);
    0|]

let yytransl_block = [|
  257 (* VAL *);
  258 (* RELNAME *);
  259 (* VARNAME *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\003\000\003\000\004\000\004\000\004\000\
\005\000\008\000\009\000\006\000\011\000\011\000\011\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\010\000\
\013\000\014\000\015\000\016\000\017\000\018\000\018\000\018\000\
\019\000\019\000\007\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\002\000\001\000\001\000\001\000\
\004\000\001\000\001\000\003\000\000\000\001\000\003\000\001\000\
\002\000\001\000\001\000\001\000\001\000\001\000\002\000\004\000\
\003\000\003\000\003\000\003\000\003\000\000\000\001\000\003\000\
\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\001\000\036\000\000\000\000\000\
\004\000\006\000\007\000\008\000\000\000\000\000\000\000\000\000\
\002\000\005\000\000\000\035\000\034\000\033\000\000\000\000\000\
\012\000\000\000\000\000\000\000\016\000\000\000\014\000\018\000\
\019\000\020\000\021\000\022\000\024\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\017\000\023\000\009\000\000\000\
\032\000\025\000\026\000\027\000\028\000\029\000\015\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\010\000\011\000\012\000\013\000\
\028\000\014\000\030\000\031\000\032\000\033\000\034\000\035\000\
\036\000\023\000\024\000"

let yysindex = "\001\000\
\255\254\000\000\253\254\011\255\000\000\000\000\005\255\004\255\
\000\000\000\000\000\000\000\000\020\255\023\255\006\255\024\255\
\000\000\000\000\002\255\000\000\000\000\000\000\012\255\014\255\
\000\000\008\255\022\255\026\255\000\000\025\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\006\255\032\255\033\255\
\034\255\035\255\036\255\029\255\000\000\000\000\000\000\002\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\028\255\
\000\000\000\000\000\000\000\000\000\000\037\255\027\255\000\000\
\000\000\000\000\007\255\000\000\000\000\000\000\000\000\031\255\
\000\000\000\000\000\000\000\000\000\000\042\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\027\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\031\000\000\000\000\000\000\000\000\000\
\000\000\252\255\000\000\248\255\014\000\000\000\000\000\000\000\
\000\000\010\000\000\000"

let yytablesize = 48
let yytable = "\016\000\
\003\000\001\000\004\000\003\000\026\000\003\000\021\000\004\000\
\022\000\027\000\015\000\013\000\003\000\013\000\029\000\005\000\
\039\000\040\000\041\000\042\000\043\000\017\000\045\000\003\000\
\044\000\019\000\037\000\020\000\025\000\038\000\047\000\048\000\
\050\000\051\000\052\000\053\000\054\000\039\000\018\000\055\000\
\046\000\030\000\010\000\029\000\003\000\031\000\011\000\049\000"

let yycheck = "\004\000\
\002\001\001\000\004\001\002\001\003\001\002\001\001\001\004\001\
\003\001\008\001\014\001\005\001\002\001\007\001\019\000\017\001\
\009\001\010\001\011\001\012\001\013\001\017\001\027\000\002\001\
\003\001\006\001\015\001\005\001\005\001\016\001\005\001\007\001\
\001\001\001\001\001\001\001\001\001\001\009\001\008\000\048\000\
\027\000\015\001\006\001\048\000\017\001\015\001\005\001\038\000"

let yynames_const = "\
  QMARK\000\
  DOT\000\
  IMPLIEDBY\000\
  AND\000\
  NOT\000\
  EQ\000\
  LT\000\
  GT\000\
  LE\000\
  GE\000\
  LPAREN\000\
  RPAREN\000\
  SEP\000\
  EOP\000\
  ANON\000\
  "

let yynames_block = "\
  VAL\000\
  RELNAME\000\
  VARNAME\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                   ( failwith "main: where's my program?!")
# 154 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'program) in
    Obj.repr(
# 38 "parser.mly"
                                        ( Prog _1  )
# 161 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exprlist) in
    Obj.repr(
# 42 "parser.mly"
                  ( _1 )
# 168 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                ( _1 :: []  )
# 175 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exprlist) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 47 "parser.mly"
                        ( _2 :: _1 )
# 183 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 51 "parser.mly"
                                     ( _1 )
# 190 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 52 "parser.mly"
                                      ( _1 )
# 197 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 53 "parser.mly"
                ( _1 )
# 204 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'head) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 58 "parser.mly"
                             ( Rule (_1,_3) )
# 212 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 62 "parser.mly"
                   ( _1 )
# 219 "parser.ml"
               : 'head))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'litlist) in
    Obj.repr(
# 66 "parser.mly"
                 ( _1 )
# 226 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 70 "parser.mly"
                            ( Query _2 )
# 233 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parser.mly"
                           ( [] )
# 239 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 74 "parser.mly"
                   ( _1 :: [] )
# 246 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'litlist) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 75 "parser.mly"
                            ( _3 :: _1 )
# 254 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 79 "parser.mly"
                    ( Rel _1 )
# 261 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 80 "parser.mly"
                        ( Not (Rel _2) )
# 268 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 81 "parser.mly"
                   ( _1 )
# 275 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'lessThanInequality) in
    Obj.repr(
# 82 "parser.mly"
                            ( _1 )
# 282 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'greaterThanInequality) in
    Obj.repr(
# 83 "parser.mly"
                              ( _1 )
# 289 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'lessOrEqualInequality) in
    Obj.repr(
# 84 "parser.mly"
                              ( _1 )
# 296 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'greaterOrEqualInequality) in
    Obj.repr(
# 85 "parser.mly"
                                 ( _1 )
# 303 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 86 "parser.mly"
                         ( Not _2 )
# 310 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'termlist) in
    Obj.repr(
# 90 "parser.mly"
                                  ( Pred (_1, _3) )
# 318 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 94 "parser.mly"
                     ( Equal (_1, _3) )
# 326 "parser.ml"
               : 'equality))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 98 "parser.mly"
                      ( LessThan (_1, _3) )
# 334 "parser.ml"
               : 'lessThanInequality))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 101 "parser.mly"
                      ( GreaterThan (_1, _3) )
# 342 "parser.ml"
               : 'greaterThanInequality))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
                      ( LessOrEqual (_1, _3) )
# 350 "parser.ml"
               : 'lessOrEqualInequality))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 107 "parser.mly"
                      ( GreaterOrEqual (_1, _3) )
# 358 "parser.ml"
               : 'greaterOrEqualInequality))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                            ( [] )
# 364 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 110 "parser.mly"
                ( _1 :: [] )
# 371 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'termlist) in
    Obj.repr(
# 111 "parser.mly"
                          ( _1 :: _3 )
# 379 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 114 "parser.mly"
                 ( _1 )
# 386 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 115 "parser.mly"
              ( _1 )
# 393 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 119 "parser.mly"
                      ( Fact _1 )
# 400 "parser.ml"
               : 'fact))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Expr.expr)
