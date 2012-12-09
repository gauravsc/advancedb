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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Expr.expr
