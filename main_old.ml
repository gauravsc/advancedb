open Lexer ;;
exception Eof  ;;
open Printf ;;
open Postgresql ;;


(* check for options of yadi command line *)
let _ =
  if Array.length Sys.argv <> 2 then (
    Printf.printf "\
      Usage:  yadi <connection info>\n\
      Enter the Datalog Interpreter and connect to the PostgreSQL database\n\
      with parameters:\n\
\n\
          * host=      hostname of the PostgreSQL database server\n\
          * port=      connection port of the PostgreSQL database server\n\
          * user=      user or role in PostgreSQL\n\
          * password=  password of the user \\!/ no encryption\n\
          * dbname=    database name to work with in PostgreSQL\n\
\n\
      Example:\n\
        \t yadi \"host=localhost port=5432 user=test password=test dbname=test_db\"\n";
    exit 1)
;;

(* assign postgreSQL connection parameters to conninfo variable *)
let conninfo = Sys.argv.(1) ;;

(* pretty print connection informations *)
let print_conn_info conn =
  printf "dbname    = %s\n" conn#db;
  printf "user      = %s\n" conn#user;
  printf "password  = %s\n" conn#pass;
  printf "host      = %s\n" conn#host;
  printf "port      = %s\n" conn#port;
  printf "tty       = %s\n" conn#tty;
  printf "options   = %s\n" conn#options;
  printf "pid       = %i\n" conn#backend_pid
;;

(* pretty print answer set of a query *)
let print_res conn res =
  match res#status with
  | Empty_query -> printf "Empty query\n"
  | Tuples_ok ->
      printf "Tuples ok\n";
      printf "%i tuples with %i fields\n" res#ntuples res#nfields;
      print_endline (String.concat ";" res#get_fnames_lst);
      for tuple = 0 to res#ntuples - 1 do
        for field = 0 to res#nfields - 1  do
          printf "%s, " (res#getvalue tuple field)
        done;
        print_newline ()
      done
  | Bad_response -> printf "Bad response: %s\n" res#error; conn#reset
  | Nonfatal_error -> printf "Non fatal error: %s\n" res#error
  | Fatal_error -> printf "Fatal error: %s\n" res#error
  | _ 			-> failwith "error: unexpected status"
;;

(* catch answers from the db server *)
let rec dump_res conn =
  match conn#get_result with
  | Some res -> print_res conn res; flush stdout; dump_res conn
  | None -> ()
;;

(* everything is done here *)
let main () =
  let c = new connection ~conninfo () in
  print_conn_info c; flush stdout;
  c#set_notice_processor (fun s -> eprintf "postgresql error [%s]\n" s);
  try 
   let lexbuf = Lexing.from_channel stdin in 
    while true do
	    print_string "yadi$ "; flush stdout;
    	let ast = Parser.main Lexer.token lexbuf in 
	    print_endline (Expr.to_string ast); flush stdout;
	    (* promijenila Sandra *)
	    let sql = (if Eval.is_prog ast then Eval.sql_stt ast else invalid_arg "main" ) in print_endline(sql);
(*	    let sql = "hello" in print_endline(sql); *)
	    c#send_query sql;
	    dump_res c 
        done
with Eof ->
   c#finish; exit 0
;; 

(* mainly a call to the above main function *)
let _ =
  try main () with
  | Error e -> prerr_endline (string_of_error e)
  | e -> prerr_endline (Printexc.to_string e)
;;
