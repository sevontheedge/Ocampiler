# 2 "lexer.mll"
         
        open Parser        (* The type token is defined in parser.mli *)
        exception Eof
        
# 7 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\237\255\002\000\000\000\002\000\002\000\001\000\001\000\
    \003\000\004\000\248\255\249\255\250\255\251\255\252\255\253\255\
    \023\000\255\255\244\255\245\255\000\000\000\000\243\255\000\000\
    \001\000\001\000\242\255\002\000\241\255\000\000\240\255\239\255\
    \238\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \009\000\008\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \001\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255";
  Lexing.lex_default =
   "\255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255\000\000\000\000\000\000\255\255\255\255\000\000\255\255\
    \255\255\255\255\000\000\255\255\000\000\255\255\000\000\000\000\
    \000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\017\000\017\000\000\000\000\000\017\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \011\000\010\000\013\000\015\000\000\000\014\000\000\000\012\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\000\000\000\000\009\000\002\000\008\000\032\000\
    \019\000\018\000\000\000\000\000\000\000\000\000\006\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\004\000\023\000\000\000\030\000\022\000\026\000\000\000\
    \000\000\000\000\000\000\000\000\024\000\000\000\005\000\003\000\
    \029\000\027\000\031\000\020\000\025\000\021\000\028\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    ";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\255\255\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\000\000\000\000\000\000\002\000\
    \008\000\009\000\255\255\255\255\255\255\255\255\000\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\006\000\255\255\029\000\021\000\025\000\255\255\
    \255\255\255\255\255\255\255\255\023\000\255\255\000\000\000\000\
    \004\000\005\000\003\000\007\000\024\000\020\000\027\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 7 "lexer.mll"
                                    ( token lexbuf )
# 122 "lexer.ml"

  | 1 ->
let
# 8 "lexer.mll"
                           lxm
# 128 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 8 "lexer.mll"
                                    ( NUMBER( int_of_string lxm) )
# 132 "lexer.ml"

  | 2 ->
# 9 "lexer.mll"
                                    ( PLUS )
# 137 "lexer.ml"

  | 3 ->
# 10 "lexer.mll"
                                    ( MINUS )
# 142 "lexer.ml"

  | 4 ->
# 11 "lexer.mll"
                                    ( TIMES )
# 147 "lexer.ml"

  | 5 ->
# 12 "lexer.mll"
                                    ( DIV )
# 152 "lexer.ml"

  | 6 ->
# 13 "lexer.mll"
                                    ( LPAREN )
# 157 "lexer.ml"

  | 7 ->
# 14 "lexer.mll"
                                    ( RPAREN )
# 162 "lexer.ml"

  | 8 ->
# 15 "lexer.mll"
                                    ( LESS )
# 167 "lexer.ml"

  | 9 ->
# 16 "lexer.mll"
                                    ( GREATER )
# 172 "lexer.ml"

  | 10 ->
# 17 "lexer.mll"
                                    ( GREATEREQUAL )
# 177 "lexer.ml"

  | 11 ->
# 18 "lexer.mll"
                                    ( LESSEQUAL )
# 182 "lexer.ml"

  | 12 ->
let
# 19 "lexer.mll"
                       lxm
# 188 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos (lexbuf.Lexing.lex_start_pos + 4) in
# 19 "lexer.mll"
                                    ( BOOLEAN(bool_of_string (String.lowercase_ascii lxm) ))
# 192 "lexer.ml"

  | 13 ->
let
# 20 "lexer.mll"
                         lxm
# 198 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos (lexbuf.Lexing.lex_start_pos + 5) in
# 20 "lexer.mll"
                                    ( BOOLEAN(bool_of_string (String.lowercase_ascii lxm) ) )
# 202 "lexer.ml"

  | 14 ->
# 21 "lexer.mll"
                                    ( NEGATION )
# 207 "lexer.ml"

  | 15 ->
# 22 "lexer.mll"
                                    ( AND )
# 212 "lexer.ml"

  | 16 ->
# 23 "lexer.mll"
                                    ( OR )
# 217 "lexer.ml"

  | 17 ->
# 24 "lexer.mll"
                                    ( EQUALS )
# 222 "lexer.ml"

  | 18 ->
# 25 "lexer.mll"
                                    ( EOF )
# 227 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;
