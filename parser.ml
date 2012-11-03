type token =
  | VAL of (int)
  | RELNAME of (string)
  | VARNAME of (string)
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
 
# 27 "parser.ml"
let yytransl_const = [|
  260 (* QMARK *);
  261 (* DOT *);
  262 (* IMPLIEDBY *);
  263 (* AND *);
  264 (* NOT *);
  265 (* EQ *);
  266 (* LPAREN *);
  267 (* RPAREN *);
  268 (* SEP *);
  269 (* EOP *);
  270 (* ANON *);
    0|]

let yytransl_block = [|
  257 (* VAL *);
  258 (* RELNAME *);
  259 (* VARNAME *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\003\000\003\000\004\000\004\000\004\000\
\007\000\005\000\008\000\009\000\006\000\011\000\011\000\011\000\
\012\000\012\000\012\000\012\000\010\000\013\000\014\000\014\000\
\014\000\015\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\002\000\001\000\001\000\001\000\
\001\000\004\000\001\000\001\000\003\000\000\000\001\000\003\000\
\001\000\002\000\001\000\002\000\004\000\003\000\000\000\001\000\
\003\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\001\000\009\000\027\000\000\000\
\000\000\004\000\006\000\007\000\008\000\000\000\011\000\000\000\
\000\000\002\000\005\000\000\000\026\000\000\000\000\000\013\000\
\000\000\000\000\000\000\017\000\000\000\015\000\019\000\021\000\
\000\000\000\000\018\000\020\000\010\000\000\000\025\000\022\000\
\016\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\010\000\011\000\012\000\013\000\014\000\
\027\000\015\000\029\000\030\000\031\000\022\000\023\000"

let yysindex = "\007\000\
\255\254\000\000\005\255\008\255\000\000\000\000\000\000\006\255\
\000\255\000\000\000\000\000\000\000\000\014\255\000\000\018\255\
\019\255\000\000\000\000\003\255\000\000\012\255\013\255\000\000\
\017\255\015\255\022\255\000\000\021\255\000\000\000\000\000\000\
\018\255\028\255\000\000\000\000\000\000\003\255\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\020\255\000\000\000\000\000\000\000\000\000\000\000\000\024\255\
\000\000\000\000\000\000\002\255\000\000\000\000\025\255\000\000\
\000\000\000\000\000\000\000\000\026\255\000\000\000\000\000\000\
\024\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\
\000\000\252\255\000\000\250\255\011\000\005\000\000\000"

let yytablesize = 38
let yytable = "\017\000\
\003\000\003\000\004\000\004\000\003\000\025\000\014\000\001\000\
\014\000\003\000\026\000\005\000\006\000\006\000\016\000\028\000\
\003\000\025\000\018\000\020\000\021\000\035\000\032\000\024\000\
\033\000\034\000\037\000\038\000\040\000\019\000\012\000\041\000\
\003\000\028\000\023\000\024\000\036\000\039\000"

let yycheck = "\004\000\
\002\001\002\001\004\001\004\001\002\001\003\001\005\001\001\000\
\007\001\002\001\008\001\013\001\014\001\014\001\010\001\020\000\
\002\001\003\001\013\001\006\001\003\001\026\000\011\001\005\001\
\012\001\009\001\005\001\007\001\001\001\009\000\005\001\038\000\
\013\001\038\000\011\001\011\001\026\000\033\000"

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
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
                   ( failwith "main: where's my program?!")
# 133 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'program) in
    Obj.repr(
# 37 "parser.mly"
                                        ( Prog _1  )
# 140 "parser.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exprlist) in
    Obj.repr(
# 41 "parser.mly"
                  ( _1 )
# 147 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "parser.mly"
                ( _1 :: []  )
# 154 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exprlist) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                        ( _2 :: _1 )
# 162 "parser.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 50 "parser.mly"
                                     ( _1 )
# 169 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 51 "parser.mly"
                                      ( _1 )
# 176 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 52 "parser.mly"
                ( failwith "fact: to be implemented" )
# 183 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
                   ( )
# 189 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'head) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 58 "parser.mly"
                             ( Rule (_1,_3) )
# 197 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 62 "parser.mly"
                   ( _1 )
# 204 "parser.ml"
               : 'head))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'litlist) in
    Obj.repr(
# 66 "parser.mly"
                 ( _1 )
# 211 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 70 "parser.mly"
                            ( Query _2 )
# 218 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parser.mly"
                           ( [] )
# 224 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 74 "parser.mly"
                   ( _1 :: [] )
# 231 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'litlist) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'literal) in
    Obj.repr(
# 75 "parser.mly"
                            ( _3 :: _1 )
# 239 "parser.ml"
               : 'litlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 79 "parser.mly"
                    ( Rel _1 )
# 246 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 80 "parser.mly"
                        ( Not (Rel _2) )
# 253 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 81 "parser.mly"
                   ( _1 )
# 260 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'equality) in
    Obj.repr(
# 82 "parser.mly"
                         ( Not _2 )
# 267 "parser.ml"
               : 'literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'termlist) in
    Obj.repr(
# 86 "parser.mly"
                                  ( Pred (_1, _3) )
# 275 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 90 "parser.mly"
                      ( Equal (_1, _3) )
# 283 "parser.ml"
               : 'equality))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "parser.mly"
                            ( [] )
# 289 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 93 "parser.mly"
                ( _1 :: [] )
# 296 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'termlist) in
    Obj.repr(
# 94 "parser.mly"
                          ( _1 :: _3 )
# 304 "parser.ml"
               : 'termlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "parser.mly"
                 ( _1 )
# 311 "parser.ml"
               : 'term))
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
