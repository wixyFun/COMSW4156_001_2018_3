(* Ocamllex scanner for MicroC *)

{ open Parser }

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"     { comment lexbuf }           (* Comments *)
| '('      { LPAREN }
| ')'      { RPAREN }
| '['      { LBRACK }
|  ']'     { RBRACK }
| '{'      { LBRACE }
| '}'      { RBRACE }
(* Reference Dereference *)
| '%'      { PERCENT }
| '#'      { OCTOTHORP }
| ';'      { SEMI }
| ':'      { COLON }
| ','      { COMMA }
| '+'      { PLUS }
| '-'      { MINUS }
| '*'      { TIMES }
| '/'      { DIVIDE }
| '='      { ASSIGN }

| "=="     { EQ }
| "!="     { NEQ }
| '<'      { LT }
| "<="     { LEQ }
| ">"      { GT }
| ">="     { GEQ }

| "&&"     { AND }
| "||"     { OR }
| "!"      { NOT }
| "if"     { IF }
| "else"   { ELSE }
| "for"    { FOR }
| "while"  { WHILE }
| "return" { RETURN }
| "int"    { INT }
| "bool"   { BOOL }
| "float" { FLOAT }
| "void"   { VOID }
| "string" { STRING }
| "true"   { TRUE }
| "false"  { FALSE }
| "file"   { FILE }
|  "len"	 { LEN }
| ['0'-'9']+ as lxm { LITERAL(int_of_string lxm) }
| '"'(('\\'_|[^'"'])* as lxm )'"'  { STRING_SEQ(lxm) } (* We added this, a regex for char / num*... add special chars -ryan*)
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| ['0'-'9']* ['.'] ['0'-'9']+ | ['0'-'9']+ ['.'] ['0'-'9']* as lxm  { FLOATLITERAL(float_of_string lxm) }
| eof { EOF }
| _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and comment = parse
  "*/" { token lexbuf }
| _    { comment lexbuf }