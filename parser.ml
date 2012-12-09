type token =
  | VAL of (int)
  | RELNAME of (string)
  | VARNAME of (string)
  | CONSTANT of (string)
  | QMARK
  | DOT
  | IMPLIEDBY
  | AND
  | NOT
  | EQ
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
 
# 28 "parser.ml"
let yytransl_const = [|
  261 (* QMARK *);
  262 (* DOT *);
  263 (* IMPLIEDBY *);
  264 (* AND *);
  265 (* NOT *);
  266 (* EQ *);
  267 (* LPAREN *);
  268 (* RPAREN *);
  269 (* SEP *);
  270 (* EOP *);
  271 (* ANON *);
    0|]

let yytransl_block = [|
  257 (* VAL *);
  258 (* RELNAME *);
  259 (* VARNAME *);
  260 (* CONSTANT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\003\000\003\000\004\000\004\000\004\000\
\005\000\008\000\009\000\006\000\011\000\011\000\011\000\012\000\
\012\000\012\000\012\000\010\000\013\000\014\000\014\000\014\000\
\015\000\015\000\007\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\002\000\001\000\001\000\001\000\
\004\000\001\000\001\000\003\000\000\000\001\000\003\000\001\000\
\002\000\001\000\002\000\004\000\003\000\000\000\001\000\003\000\
\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\001\000\028\000\000\000\000\000\
\004\000\006\000\007\000\008\000\000\000\000\000\000\000\000\000\
\002\000\005\000\000\000\027\000\025\000\026\000\000\000\000\000\
\012\000\000\000\000\000\000\000\016\000\000\000\014\000\018\000\
\020\000\000\000\000\000\017\000\019\000\009\000\000\000\024\000\
\021\000\015\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\010\000\011\000\012\000\013\000\
\028\000\014\000\030\000\031\000\032\000\023\000\024\000"

let yysindex = "\005\000\
\255\254\000\000\252\254\009\255\000\000\000\000\006\255\003\255\
\000\000\000\000\000\000\000\000\007\255\015\255\013\255\018\255\
\000\000\000\000\000\255\000\000\000\000\000\000\010\255\012\255\
\000\000\017\255\016\255\020\255\000\000\021\255\000\000\000\000\
\000\000\013\255\027\255\000\000\000\000\000\000\000\255\000\000\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\255\
\000\000\000\000\000\000\000\000\000\000\023\255\022\255\000\000\
\000\000\000\000\004\255\000\000\000\000\000\000\000\000\024\255\
\000\000\000\000\000\000\000\000\000\000\025\255\000\000\000\000\
\000\000\022\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000\000\
\000\000\252\255\000\000\254\255\011\000\006\000\000\000"

let yytablesize = 40
let yytable = "\016\000\
\003\000\003\000\026\000\004\000\003\000\001\000\015\000\004\000\
\027\000\013\000\003\000\013\000\005\000\019\000\029\000\021\000\
\022\000\003\000\026\000\017\000\020\000\033\000\036\000\025\000\
\034\000\038\000\035\000\041\000\039\000\010\000\011\000\018\000\
\003\000\022\000\029\000\023\000\042\000\037\000\000\000\040\000"

let yycheck = "\004\000\
\002\001\002\001\003\001\005\001\002\001\001\000\011\001\005\001\
\009\001\006\001\002\001\008\001\014\001\007\001\019\000\003\001\
\004\001\002\001\003\001\014\001\006\001\012\001\027\000\006\001\
\013\001\006\001\010\001\001\001\008\001\007\001\006\001\008\000\
\014\001\012\001\039\000\012\001\039\000\027\000\255\255\034\000"

let yynames_const = "\
  QMARK\000\
  DOT\000\
  IMPLIEDBY\000\
  AND\000\
  NOT\000\
  EQ\000\
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
  CONSTANT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
                   ( failwith "main: where's my program?!")
# 136 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'program) in
    Obj.repr(
# 37 "parser.mly"
                                        ( Prog _1  )
# 143 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exprlist) in
    Obj.repr(
# 41 "parser.mly"
                  ( _1 )
# 150 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "parser.mly"
                ( _1 :: []  )
# 157 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exprlist) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                        ( _2 :: _1 )
# 165 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 50 "parser.mly"
                                     ( _1 )
# 172 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 51 "parser.mly"
                                      ( _1 )
# 179 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 52 "parser.mly"
                ( _1 )
# 186 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'head) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 57 "parser.mly"
                             ( Rule (_1,_3) )
# 194 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 61 "parser.mly"
                   ( _1 )
# 201 "parser.ml"
               : 'head))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'litlist) in
    Obj.repr(
# 65 "parser.mly"
                 ( _1 )
# 208 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 69 "parser.mly"
                            ( Query _2 )
# 215 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
                           ( [] )
# 221 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 73 "parser.mly"
                   ( _1 :: [] )
# 228 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'litlist) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 74 "parser.mly"
                            ( _3 :: _1 )
# 236 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 78 "parser.mly"
                    ( Rel _1 )
# 243 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 79 "parser.mly"
                        ( Not (Rel _2) )
# 250 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 80 "parser.mly"
                   ( _1 )
# 257 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 81 "parser.mly"
                         ( Not _2 )
# 264 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'termlist) in
    Obj.repr(
# 85 "parser.mly"
                                  ( Pred (_1, _3) )
# 272 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 89 "parser.mly"
                      ( Equal (_1, _3) )
# 280 "parser.ml"
               : 'equality))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parser.mly"
                            ( [] )
# 286 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 92 "parser.mly"
                ( _1 :: [] )
# 293 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'termlist) in
    Obj.repr(
# 93 "parser.mly"
                          ( _1 :: _3 )
# 301 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 96 "parser.mly"
                  ( _1 )
# 308 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "parser.mly"
                   ( _1 )
# 315 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 101 "parser.mly"
                      ( Fact _1 )
# 322 "parser.ml"
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
