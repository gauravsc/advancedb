objects= expr.cmo parser.cmo lexer.cmo eval.cmo main.cmo
packages= postgresql


yadi:	$(objects)
	ocamlfind ocamlc -package $(packages) -thread -linkpkg $(objects) -o yadi



parser.ml:	parser.mly expr.cmi
	ocamlyacc $<

parser.cmi:	parser.mli
	ocamlc -c parser.mli

parser.cmo:	parser.ml parser.cmi
	ocamlc -c parser.ml

lexer.ml:	lexer.mll parser.cmi expr.cmi
	ocamllex $<


main.cmo:	main.ml expr.cmo eval.cmo parser.cmo lexer.cmo
	ocamlfind ocamlc -package $(packages) -thread -c main.ml

%.cmo:	%.ml
	ocamlc -c $<
%.cmi: %ml
	ocamlc -c $<


eval.cmo:	expr.cmo



clean :
	rm *.cmo *.cmi lexer.ml parser.ml parser.mli 
