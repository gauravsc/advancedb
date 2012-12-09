open Lexer ;;
exception Eof  ;;
open Printf ;;

(* everything is done here *)
let main () =
  try 
   let lexbuf = Lexing.from_channel stdin in 
    while true do
	    print_string "yadi$ "; flush stdout;
    	let ast = Parser.main Lexer.token lexbuf in 
	    print_endline (Expr.to_string ast); flush stdout;
	done
  with Eof ->
   exit 0   
;; 

(* mainly a call to the above main function *)
let _ =
  try main () with
  | e -> prerr_endline (Printexc.to_string e)
;;
