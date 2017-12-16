type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACK
  | RBRACK
  | COMMA
  | COLON
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | LEN
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | STRING
  | FLOAT
  | VOID
  | FILE
  | OCTOTHORP
  | PERCENT
  | FLOATLITERAL of (float)
  | LITERAL of (int)
  | STRING_SEQ of (string)
  | ID of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 52 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* LBRACK *);
  263 (* RBRACK *);
  264 (* COMMA *);
  265 (* COLON *);
  266 (* PLUS *);
  267 (* MINUS *);
  268 (* TIMES *);
  269 (* DIVIDE *);
  270 (* ASSIGN *);
  271 (* NOT *);
  272 (* EQ *);
  273 (* NEQ *);
  274 (* LT *);
  275 (* LEQ *);
  276 (* GT *);
  277 (* GEQ *);
  278 (* TRUE *);
  279 (* FALSE *);
  280 (* AND *);
  281 (* OR *);
  282 (* LEN *);
  283 (* RETURN *);
  284 (* IF *);
  285 (* ELSE *);
  286 (* FOR *);
  287 (* WHILE *);
  288 (* INT *);
  289 (* BOOL *);
  290 (* STRING *);
  291 (* FLOAT *);
  292 (* VOID *);
  293 (* FILE *);
  294 (* OCTOTHORP *);
  295 (* PERCENT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  296 (* FLOATLITERAL *);
  297 (* LITERAL *);
  298 (* STRING_SEQ *);
  299 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\010\000\011\000\007\000\007\000\003\000\008\000\008\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\014\000\014\000\013\000\013\000\013\000\013\000\013\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\015\000\015\000\
\017\000\017\000\016\000\016\000\018\000\018\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\004\000\003\000\000\000\002\000\003\000\000\000\002\000\
\002\000\002\000\003\000\003\000\005\000\007\000\009\000\005\000\
\000\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\002\000\002\000\003\000\003\000\004\000\
\003\000\004\000\004\000\002\000\002\000\003\000\001\000\001\000\
\001\000\003\000\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\071\000\000\000\010\000\011\000\014\000\012\000\
\013\000\017\000\001\000\003\000\004\000\000\000\015\000\016\000\
\000\000\000\000\019\000\000\000\022\000\000\000\018\000\000\000\
\000\000\000\000\008\000\000\000\000\000\020\000\000\000\000\000\
\009\000\021\000\000\000\000\000\000\000\000\000\023\000\005\000\
\000\000\000\000\000\000\000\000\037\000\038\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\064\000\063\000\036\000\
\000\000\024\000\000\000\035\000\000\000\000\000\065\000\000\000\
\000\000\052\000\053\000\000\000\026\000\000\000\000\000\000\000\
\000\000\061\000\060\000\000\000\000\000\025\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\055\000\028\000\057\000\000\000\062\000\
\000\000\027\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\042\000\043\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\066\000\
\058\000\000\000\000\000\000\000\056\000\000\000\059\000\000\000\
\000\000\032\000\000\000\000\000\000\000\030\000\000\000\000\000\
\031\000"

let yydgoto = "\002\000\
\003\000\004\000\012\000\013\000\014\000\025\000\032\000\036\000\
\026\000\015\000\016\000\058\000\059\000\101\000\060\000\104\000\
\064\000\105\000"

let yysindex = "\003\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\253\254\000\000\000\000\
\017\255\027\255\000\000\019\255\000\000\126\255\000\000\011\255\
\018\255\055\255\000\000\061\255\126\255\000\000\012\255\126\255\
\000\000\000\000\014\255\100\255\070\255\059\000\000\000\000\000\
\021\255\068\255\059\000\059\000\000\000\000\000\077\255\058\255\
\080\255\084\255\085\255\060\255\064\255\000\000\000\000\000\000\
\025\255\000\000\173\000\000\000\087\001\142\255\000\000\059\255\
\065\255\000\000\000\000\066\255\000\000\194\000\059\000\059\000\
\059\000\000\000\000\000\059\000\059\000\000\000\059\000\059\000\
\059\000\059\000\059\000\059\000\059\000\059\000\059\000\059\000\
\059\000\059\000\059\000\000\000\000\000\000\000\021\255\000\000\
\110\255\000\000\106\001\157\001\115\255\125\001\157\001\114\255\
\112\255\141\001\062\255\062\255\000\000\000\000\157\001\200\001\
\200\001\079\255\079\255\079\255\079\255\188\001\173\001\000\000\
\000\000\017\000\059\000\017\000\000\000\059\000\000\000\092\255\
\215\000\000\000\157\001\017\000\059\000\000\000\121\255\017\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\129\255\000\000\000\000\
\000\000\130\255\000\000\000\000\000\000\000\000\000\000\184\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\102\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\255\
\000\000\000\000\000\000\131\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\013\255\000\000\000\000\004\255\000\000\
\132\255\000\000\127\000\152\000\000\000\000\000\029\255\059\001\
\071\001\070\000\240\000\009\001\034\001\069\255\111\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\226\255\
\000\000\000\000\005\255\000\000\134\255\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\113\000\000\000\249\255\000\000\000\000\110\000\
\000\000\000\000\000\000\143\255\218\255\018\000\217\255\000\000\
\000\000\000\000"

let yytablesize = 733
let yytable = "\061\000\
\011\000\063\000\017\000\001\000\066\000\067\000\069\000\070\000\
\128\000\070\000\130\000\069\000\070\000\034\000\024\000\034\000\
\017\000\017\000\134\000\017\000\028\000\031\000\137\000\019\000\
\035\000\023\000\076\000\021\000\022\000\054\000\077\000\054\000\
\099\000\100\000\102\000\054\000\054\000\103\000\106\000\018\000\
\107\000\108\000\109\000\110\000\111\000\112\000\113\000\114\000\
\115\000\116\000\117\000\118\000\119\000\027\000\033\000\120\000\
\037\000\020\000\069\000\038\000\054\000\055\000\029\000\041\000\
\030\000\094\000\095\000\042\000\043\000\050\000\021\000\050\000\
\044\000\081\000\082\000\050\000\050\000\065\000\068\000\045\000\
\046\000\071\000\050\000\047\000\129\000\072\000\073\000\131\000\
\079\000\080\000\081\000\082\000\050\000\050\000\100\000\052\000\
\053\000\054\000\055\000\056\000\057\000\038\000\074\000\039\000\
\040\000\041\000\075\000\096\000\097\000\042\000\043\000\051\000\
\121\000\051\000\044\000\123\000\125\000\051\000\051\000\126\000\
\132\000\045\000\046\000\136\000\051\000\047\000\048\000\049\000\
\033\000\050\000\051\000\006\000\007\000\067\000\068\000\051\000\
\033\000\052\000\053\000\054\000\055\000\056\000\057\000\038\000\
\034\000\039\000\093\000\041\000\062\000\000\000\135\000\042\000\
\043\000\000\000\000\000\000\000\044\000\005\000\006\000\007\000\
\008\000\009\000\010\000\045\000\046\000\000\000\000\000\047\000\
\048\000\049\000\000\000\050\000\051\000\000\000\000\000\000\000\
\000\000\000\000\000\000\052\000\053\000\054\000\055\000\056\000\
\057\000\023\000\000\000\023\000\023\000\023\000\000\000\000\000\
\000\000\023\000\023\000\000\000\000\000\000\000\023\000\000\000\
\000\000\000\000\000\000\000\000\000\000\023\000\023\000\000\000\
\000\000\023\000\023\000\023\000\000\000\023\000\023\000\000\000\
\000\000\000\000\000\000\000\000\000\000\023\000\023\000\023\000\
\023\000\023\000\023\000\029\000\000\000\029\000\029\000\029\000\
\000\000\000\000\000\000\029\000\029\000\000\000\000\000\000\000\
\029\000\000\000\000\000\000\000\000\000\000\000\000\000\029\000\
\029\000\000\000\000\000\029\000\029\000\029\000\000\000\029\000\
\029\000\000\000\000\000\000\000\000\000\000\000\000\000\029\000\
\029\000\029\000\029\000\029\000\029\000\000\000\000\000\000\000\
\000\000\000\000\038\000\000\000\039\000\000\000\041\000\000\000\
\000\000\000\000\042\000\043\000\000\000\000\000\000\000\044\000\
\005\000\006\000\007\000\008\000\009\000\010\000\045\000\046\000\
\000\000\000\000\047\000\048\000\049\000\000\000\050\000\051\000\
\000\000\000\000\000\000\000\000\000\000\000\000\052\000\053\000\
\054\000\055\000\056\000\057\000\038\000\000\000\000\000\000\000\
\041\000\000\000\000\000\000\000\042\000\043\000\046\000\000\000\
\046\000\044\000\000\000\000\000\046\000\046\000\000\000\000\000\
\045\000\046\000\000\000\046\000\047\000\046\000\046\000\046\000\
\046\000\046\000\046\000\000\000\000\000\046\000\046\000\000\000\
\052\000\053\000\054\000\055\000\056\000\057\000\039\000\000\000\
\039\000\000\000\000\000\000\000\039\000\039\000\000\000\039\000\
\039\000\039\000\039\000\039\000\000\000\039\000\039\000\039\000\
\039\000\039\000\039\000\000\000\000\000\039\000\039\000\040\000\
\000\000\040\000\000\000\000\000\000\000\040\000\040\000\000\000\
\040\000\040\000\000\000\000\000\040\000\000\000\040\000\040\000\
\040\000\040\000\040\000\040\000\000\000\000\000\040\000\040\000\
\041\000\000\000\041\000\000\000\000\000\000\000\041\000\041\000\
\000\000\041\000\041\000\000\000\000\000\041\000\000\000\041\000\
\041\000\041\000\041\000\041\000\041\000\078\000\000\000\041\000\
\041\000\000\000\000\000\000\000\000\000\000\000\079\000\080\000\
\081\000\082\000\083\000\000\000\084\000\085\000\086\000\087\000\
\088\000\089\000\098\000\000\000\090\000\091\000\000\000\000\000\
\000\000\000\000\000\000\079\000\080\000\081\000\082\000\083\000\
\000\000\084\000\085\000\086\000\087\000\088\000\089\000\133\000\
\000\000\090\000\091\000\000\000\000\000\000\000\000\000\000\000\
\079\000\080\000\081\000\082\000\083\000\000\000\084\000\085\000\
\086\000\087\000\088\000\089\000\000\000\000\000\090\000\091\000\
\047\000\000\000\047\000\000\000\000\000\000\000\047\000\047\000\
\000\000\000\000\000\000\000\000\000\000\047\000\000\000\047\000\
\047\000\047\000\047\000\047\000\047\000\000\000\000\000\047\000\
\047\000\048\000\000\000\048\000\000\000\000\000\000\000\048\000\
\048\000\000\000\000\000\000\000\000\000\000\000\048\000\000\000\
\048\000\048\000\048\000\048\000\048\000\048\000\000\000\000\000\
\048\000\048\000\049\000\000\000\049\000\000\000\000\000\000\000\
\049\000\049\000\000\000\000\000\000\000\000\000\000\000\049\000\
\000\000\049\000\049\000\049\000\049\000\049\000\049\000\000\000\
\000\000\049\000\049\000\044\000\000\000\044\000\000\000\000\000\
\000\000\044\000\044\000\000\000\000\000\000\000\000\000\045\000\
\044\000\045\000\044\000\044\000\000\000\045\000\045\000\000\000\
\000\000\000\000\044\000\044\000\045\000\000\000\045\000\045\000\
\000\000\092\000\000\000\000\000\000\000\000\000\045\000\045\000\
\079\000\080\000\081\000\082\000\083\000\000\000\084\000\085\000\
\086\000\087\000\088\000\089\000\122\000\000\000\090\000\091\000\
\000\000\000\000\000\000\079\000\080\000\081\000\082\000\083\000\
\000\000\084\000\085\000\086\000\087\000\088\000\089\000\124\000\
\000\000\090\000\091\000\000\000\000\000\000\000\079\000\080\000\
\081\000\082\000\083\000\000\000\084\000\085\000\086\000\087\000\
\088\000\089\000\000\000\127\000\090\000\091\000\079\000\080\000\
\081\000\082\000\083\000\000\000\084\000\085\000\086\000\087\000\
\088\000\089\000\000\000\000\000\090\000\091\000\079\000\080\000\
\081\000\082\000\083\000\000\000\084\000\085\000\086\000\087\000\
\088\000\089\000\000\000\000\000\090\000\091\000\079\000\080\000\
\081\000\082\000\000\000\000\000\084\000\085\000\086\000\087\000\
\088\000\089\000\000\000\000\000\090\000\079\000\080\000\081\000\
\082\000\000\000\000\000\084\000\085\000\086\000\087\000\088\000\
\089\000\079\000\080\000\081\000\082\000\000\000\000\000\000\000\
\000\000\086\000\087\000\088\000\089\000"

let yycheck = "\038\000\
\000\000\041\000\006\001\001\000\043\000\044\000\003\001\003\001\
\122\000\048\000\124\000\008\001\008\001\001\001\022\000\003\001\
\006\001\006\001\132\000\006\001\003\001\029\000\136\000\007\001\
\032\000\007\001\002\001\001\001\002\001\001\001\006\001\003\001\
\071\000\072\000\073\000\007\001\008\001\076\000\077\000\043\001\
\079\000\080\000\081\000\082\000\083\000\084\000\085\000\086\000\
\087\000\088\000\089\000\090\000\091\000\043\001\043\001\095\000\
\043\001\041\001\001\001\002\001\040\001\041\001\008\001\006\001\
\004\001\007\001\008\001\010\001\011\001\001\001\001\001\003\001\
\015\001\012\001\013\001\007\001\008\001\010\001\002\001\022\001\
\023\001\002\001\014\001\026\001\123\000\002\001\002\001\126\000\
\010\001\011\001\012\001\013\001\024\001\025\001\133\000\038\001\
\039\001\040\001\041\001\042\001\043\001\002\001\043\001\004\001\
\005\001\006\001\043\001\043\001\043\001\010\001\011\001\001\001\
\003\001\003\001\015\001\001\001\003\001\007\001\008\001\008\001\
\029\001\022\001\023\001\003\001\014\001\026\001\027\001\028\001\
\001\001\030\001\031\001\003\001\003\001\003\001\003\001\025\001\
\003\001\038\001\039\001\040\001\041\001\042\001\043\001\002\001\
\032\000\004\001\005\001\006\001\039\000\255\255\133\000\010\001\
\011\001\255\255\255\255\255\255\015\001\032\001\033\001\034\001\
\035\001\036\001\037\001\022\001\023\001\255\255\255\255\026\001\
\027\001\028\001\255\255\030\001\031\001\255\255\255\255\255\255\
\255\255\255\255\255\255\038\001\039\001\040\001\041\001\042\001\
\043\001\002\001\255\255\004\001\005\001\006\001\255\255\255\255\
\255\255\010\001\011\001\255\255\255\255\255\255\015\001\255\255\
\255\255\255\255\255\255\255\255\255\255\022\001\023\001\255\255\
\255\255\026\001\027\001\028\001\255\255\030\001\031\001\255\255\
\255\255\255\255\255\255\255\255\255\255\038\001\039\001\040\001\
\041\001\042\001\043\001\002\001\255\255\004\001\005\001\006\001\
\255\255\255\255\255\255\010\001\011\001\255\255\255\255\255\255\
\015\001\255\255\255\255\255\255\255\255\255\255\255\255\022\001\
\023\001\255\255\255\255\026\001\027\001\028\001\255\255\030\001\
\031\001\255\255\255\255\255\255\255\255\255\255\255\255\038\001\
\039\001\040\001\041\001\042\001\043\001\255\255\255\255\255\255\
\255\255\255\255\002\001\255\255\004\001\255\255\006\001\255\255\
\255\255\255\255\010\001\011\001\255\255\255\255\255\255\015\001\
\032\001\033\001\034\001\035\001\036\001\037\001\022\001\023\001\
\255\255\255\255\026\001\027\001\028\001\255\255\030\001\031\001\
\255\255\255\255\255\255\255\255\255\255\255\255\038\001\039\001\
\040\001\041\001\042\001\043\001\002\001\255\255\255\255\255\255\
\006\001\255\255\255\255\255\255\010\001\011\001\001\001\255\255\
\003\001\015\001\255\255\255\255\007\001\008\001\255\255\255\255\
\022\001\023\001\255\255\014\001\026\001\016\001\017\001\018\001\
\019\001\020\001\021\001\255\255\255\255\024\001\025\001\255\255\
\038\001\039\001\040\001\041\001\042\001\043\001\001\001\255\255\
\003\001\255\255\255\255\255\255\007\001\008\001\255\255\010\001\
\011\001\012\001\013\001\014\001\255\255\016\001\017\001\018\001\
\019\001\020\001\021\001\255\255\255\255\024\001\025\001\001\001\
\255\255\003\001\255\255\255\255\255\255\007\001\008\001\255\255\
\010\001\011\001\255\255\255\255\014\001\255\255\016\001\017\001\
\018\001\019\001\020\001\021\001\255\255\255\255\024\001\025\001\
\001\001\255\255\003\001\255\255\255\255\255\255\007\001\008\001\
\255\255\010\001\011\001\255\255\255\255\014\001\255\255\016\001\
\017\001\018\001\019\001\020\001\021\001\001\001\255\255\024\001\
\025\001\255\255\255\255\255\255\255\255\255\255\010\001\011\001\
\012\001\013\001\014\001\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\001\001\255\255\024\001\025\001\255\255\255\255\
\255\255\255\255\255\255\010\001\011\001\012\001\013\001\014\001\
\255\255\016\001\017\001\018\001\019\001\020\001\021\001\001\001\
\255\255\024\001\025\001\255\255\255\255\255\255\255\255\255\255\
\010\001\011\001\012\001\013\001\014\001\255\255\016\001\017\001\
\018\001\019\001\020\001\021\001\255\255\255\255\024\001\025\001\
\001\001\255\255\003\001\255\255\255\255\255\255\007\001\008\001\
\255\255\255\255\255\255\255\255\255\255\014\001\255\255\016\001\
\017\001\018\001\019\001\020\001\021\001\255\255\255\255\024\001\
\025\001\001\001\255\255\003\001\255\255\255\255\255\255\007\001\
\008\001\255\255\255\255\255\255\255\255\255\255\014\001\255\255\
\016\001\017\001\018\001\019\001\020\001\021\001\255\255\255\255\
\024\001\025\001\001\001\255\255\003\001\255\255\255\255\255\255\
\007\001\008\001\255\255\255\255\255\255\255\255\255\255\014\001\
\255\255\016\001\017\001\018\001\019\001\020\001\021\001\255\255\
\255\255\024\001\025\001\001\001\255\255\003\001\255\255\255\255\
\255\255\007\001\008\001\255\255\255\255\255\255\255\255\001\001\
\014\001\003\001\016\001\017\001\255\255\007\001\008\001\255\255\
\255\255\255\255\024\001\025\001\014\001\255\255\016\001\017\001\
\255\255\003\001\255\255\255\255\255\255\255\255\024\001\025\001\
\010\001\011\001\012\001\013\001\014\001\255\255\016\001\017\001\
\018\001\019\001\020\001\021\001\003\001\255\255\024\001\025\001\
\255\255\255\255\255\255\010\001\011\001\012\001\013\001\014\001\
\255\255\016\001\017\001\018\001\019\001\020\001\021\001\003\001\
\255\255\024\001\025\001\255\255\255\255\255\255\010\001\011\001\
\012\001\013\001\014\001\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\255\255\007\001\024\001\025\001\010\001\011\001\
\012\001\013\001\014\001\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\255\255\255\255\024\001\025\001\010\001\011\001\
\012\001\013\001\014\001\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\255\255\255\255\024\001\025\001\010\001\011\001\
\012\001\013\001\255\255\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\255\255\255\255\024\001\010\001\011\001\012\001\
\013\001\255\255\255\255\016\001\017\001\018\001\019\001\020\001\
\021\001\010\001\011\001\012\001\013\001\255\255\255\255\255\255\
\255\255\018\001\019\001\020\001\021\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACK\000\
  RBRACK\000\
  COMMA\000\
  COLON\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  LEN\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  STRING\000\
  FLOAT\000\
  VOID\000\
  FILE\000\
  OCTOTHORP\000\
  PERCENT\000\
  EOF\000\
  "

let yynames_block = "\
  FLOATLITERAL\000\
  LITERAL\000\
  STRING_SEQ\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 55 "parser.mly"
            ( _1 )
# 441 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                 ( [], [] )
# 447 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 59 "parser.mly"
               ( (_2 :: fst _1), snd _1 )
# 455 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 60 "parser.mly"
               ( fst _1, (_2 :: snd _1) )
# 463 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 64 "parser.mly"
     ( { typ = _1;
	 fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 478 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "parser.mly"
                  ( [] )
# 484 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 72 "parser.mly"
                  ( List.rev _1 )
# 491 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 75 "parser.mly"
                             ( [(_1,_2)] )
# 499 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
                             ( (_3,_4) :: _1 )
# 508 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 79 "parser.mly"
        ( Int )
# 514 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
         ( Bool )
# 520 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parser.mly"
          ( Float )
# 526 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
         ( Void )
# 532 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
           ( String )
# 538 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'matrix1D_typ) in
    Obj.repr(
# 84 "parser.mly"
                 ( _1 )
# 545 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'matrix1D_pointer_typ) in
    Obj.repr(
# 85 "parser.mly"
                         ( _1 )
# 552 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser.mly"
         ( File )
# 558 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 89 "parser.mly"
                                              ( Matrix1DType(_1, _3) )
# 566 "parser.ml"
               : 'matrix1D_typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    Obj.repr(
# 92 "parser.mly"
                                     ( Matrix1DPointer(_1))
# 573 "parser.ml"
               : 'matrix1D_pointer_typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parser.mly"
                     ( [] )
# 579 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 96 "parser.mly"
                     ( _2 :: _1 )
# 587 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 99 "parser.mly"
               ( (_1, _2) )
# 595 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                   ( [] )
# 601 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 103 "parser.mly"
                   ( _2 :: _1 )
# 609 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
              ( Expr _1 )
# 616 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 107 "parser.mly"
                ( Return Noexpr )
# 622 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Return _2 )
# 629 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 109 "parser.mly"
                            ( Block(List.rev _2) )
# 636 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 110 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 644 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 111 "parser.mly"
                                            ( If(_3, _5, _7) )
# 653 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 113 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 663 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 114 "parser.mly"
                                  ( While(_3, _5) )
# 671 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 117 "parser.mly"
                  ( Noexpr )
# 677 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                  ( _1 )
# 684 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'primitives) in
    Obj.repr(
# 121 "parser.mly"
                   ( _1 )
# 691 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 122 "parser.mly"
                     ( StringSeq(_1) )
# 698 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 123 "parser.mly"
                     ( BoolLit(true) )
# 704 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 124 "parser.mly"
                     ( BoolLit(false) )
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 125 "parser.mly"
                     ( Id(_1) )
# 717 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 725 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 127 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 733 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 128 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 741 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 749 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 757 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 131 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 765 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 132 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 773 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 133 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 781 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 134 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 789 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 135 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 797 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 136 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 805 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 137 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 813 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 138 "parser.mly"
                         ( Unop(Neg, _2) )
# 820 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 139 "parser.mly"
                     ( Unop(Not, _2) )
# 827 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 140 "parser.mly"
                                                  ( Assign(_1, _3)  )
# 835 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 141 "parser.mly"
                       ( _2 )
# 842 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 142 "parser.mly"
                                 ( Call(_1, _3) )
# 850 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'matrix_literal) in
    Obj.repr(
# 143 "parser.mly"
                                  ( MatrixLiteral(List.rev _2) )
# 857 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 144 "parser.mly"
                                                  ( Len(_3) )
# 864 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 145 "parser.mly"
                                                  ( Matrix1DAccess(_1, _3))
# 872 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 146 "parser.mly"
                                                  ( Matrix1DReference(_2))
# 879 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 147 "parser.mly"
                                                  ( Dereference(_2))
# 886 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 148 "parser.mly"
                                                  ( PointerIncrement(_3) )
# 893 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 151 "parser.mly"
                                               ( Literal(_1)   )
# 900 "parser.ml"
               : 'primitives))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 152 "parser.mly"
                                               ( FloatLiteral(_1) )
# 907 "parser.ml"
               : 'primitives))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'primitives) in
    Obj.repr(
# 155 "parser.mly"
                                    ( [_1] )
# 914 "parser.ml"
               : 'matrix_literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'matrix_literal) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'primitives) in
    Obj.repr(
# 156 "parser.mly"
                                    ( _3 :: _1 )
# 922 "parser.ml"
               : 'matrix_literal))
; (fun __caml_parser_env ->
    Obj.repr(
# 160 "parser.mly"
                  ( [] )
# 928 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 161 "parser.mly"
                  ( List.rev _1 )
# 935 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 164 "parser.mly"
                            ( [_1] )
# 942 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 165 "parser.mly"
                            ( _3 :: _1 )
# 950 "parser.ml"
               : 'actuals_list))
(* Entry program *)
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
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)