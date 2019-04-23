 (* File lexer.mll *)
        {
        open Parser        (* The type token is defined in parser.mli *)
        exception Eof
        }
        rule token = parse
            [' ' '\t' '\r' '\n' ]     { token lexbuf }     (* skip blanks *)
          | ['0'-'9']+ as  lxm { VALUE( int_of_string lxm) }
          | [ "true" "false" ] as lxm { BOOL (bool_of_string lxm) }
          | '+'            { PLUS }
          | '-'            { MINUS }
          | '*'            { TIMES }
          | '/'            { DIV }
          | '('            { LPAREN }
          | ')'            { RPAREN }
          | '<'            { LESS }
          | '>'            { GREATER }
          | '='            { EQUAL }
          | eof            { EOF }