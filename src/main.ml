(* open Pi;;

let z = new num 5.0 in
  print_float z#getValue;; *)

open Util;;
open Pi;;
open Printf;;

let willReadFile = ref false;;
let willPrintSourceCode = ref false;;
let willPrintTree = ref false;;
let fileContents = ref "";;
  
    
let () =
  for i = 1 to Array.length Sys.argv - 1 do 
    let arg = Sys.argv.(i) in 
      (* printf "[%i] %s\n" i arg; *)

      if arg = "-f" then begin
        willReadFile := true;
      end else if arg = "-a" then begin
        willPrintTree := true;
      end else if arg = "-t" then begin 
        Automaton.willPrintStackTrace := true;
      end else if arg = "-s" then begin 
        willPrintSourceCode := true;
      end else begin
        if !willReadFile then begin 
          fileContents := readInputFile arg;
          willReadFile := false;
        end else begin
          printf "%s is not a valid argument\n" arg;
        end
      end
  done;

  if !fileContents = "" then raise (Invalid_argument "Arquivo não inserido");

  if !willPrintSourceCode then print_endline ("Código fonte:\n" ^ !fileContents  ^ "\n");

  
  let tree = Statement(Parser.main Lexer.token (Lexing.from_string !fileContents) )
  and controlStack = (Stack.create()) 
  and valueStack = (Stack.create()) 
  and environment = (Hashtbl.create 10)
  and memory = (Hashtbl.create 10)  in

        if !willPrintTree then print_endline ("Árvore Sintática:\n" ^ (string_of_ctn tree) ^ "\n");

        (Stack.push tree controlStack);
        (*inicialização de y*)
        (Hashtbl.add environment "y" (Automaton.Loc(23)) );
        (Hashtbl.add  memory 23 (Automaton.Integer(19)) );
        (*inicialização de z*)
         (Hashtbl.add environment "z" (Automaton.Loc(1)) );
        (Hashtbl.add memory 1 (Automaton.Integer(77)) );
        (*inicialização de x *)
        (Hashtbl.add environment "x" (Automaton.Loc(24))  );
        (Hashtbl.add memory 24 (Automaton.Integer(13)) );
        (*inicialização de i *)
        (Hashtbl.add environment "i" (Automaton.Loc(456))  );
        (Hashtbl.add memory 456 (Automaton.Integer(0)) );
        Automaton.evaluatePi controlStack valueStack environment memory;;


        (* Not_Found
        Invalid_argument
        Failure *)