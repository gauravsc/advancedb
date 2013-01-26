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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Expr.expr
