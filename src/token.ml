(* Lexer tokens  *)

type token =
  (* commands *)
  | Def | Extern
  (* primary value ? *)
  | Ident of string | Number of float
  (* unknown *)
  | Keyword of char
