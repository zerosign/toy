let rec lex = parser

  | [< ' (' ' | '\n', | '\r' | '\t'); stream >] -> lex stream
  | [< ' ('A' .. 'Z' | 'a' .. 'z' as c) ; stream >] ->
	  let buffer = Buffer.create 1 in
	  Buffer.add_char buffer c;
	  lex_indent buffer stream
  | [< 'c; stream > ] ->
	  [< 'Token.Keyword c ; lex stream >]
  | [< >] -> [< >]
and lex_indent buffer = parser
  | []
