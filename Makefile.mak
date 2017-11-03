#preTA version for our makefile
# Make sure ocamlbuild can find opam-managed packages: first run
#
# eval `opam config env`

# Easiest way to build: using ocamlbuild, which in turn uses ocamlfind

.PHONY : miniMap.native

lava.native :
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis,logs  -cflags -w,+a-4 \
		minMap.native

# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log *.diff miniMap scanner.ml parser.ml parser.mli
	rm -rf *.cmx *.cmi *.cmo *.cmx *.o
	rm -rf *.native

# More detailed: build using ocamlc/ocamlopt + ocamlfind to locate LLVM

OBJS = ast.cmx codegen.cmx parser.cmx scanner.cmx semant.cmx miniMap.cmx

miniMap : $(OBJS)
	ocamlfind ocamlopt -linkpkg -package llvm -package llvm.analysis $(OBJS) -o miniMap

scanner.ml : scanner.mll
	ocamllex scanner.mll

parser.ml parser.mli : parser.mly
	ocamlyacc parser.mly

%.cmo : %.ml
	ocamlc -c $<

%.cmi : %.mli
	ocamlc -c $<

%.cmx : %.ml
	ocamlfind ocamlopt -c -package llvm $<

### Generated by "ocamldep *.ml *.mli" after building scanner.ml and parser.ml
analyzer.cmo : sast.cmo ast.cmo
analyzer.cmx : sast.cmx ast.cmx
ast.cmo :
ast.cmx :
codegen.cmo : ast.cmo
codegen.cmx : ast.cmx
lava.cmo : semant.cmo codegen.cmo ast.cmo
lava.cmx : semant.cmx codegen.cmx ast.cmx
sast.cmo : ast.cmo
sast.cmx : ast.cmx
semant.cmo : ast.cmo
semant.cmx : ast.cmx

# Building the tarball

TESTS = add1 arith1 arith2 arith3 fib for1 for2 func1 func2 func3	\
    func4 func5 func6 func7 func8 gcd2 gcd global1 global2 global3	\
    hello if1 if2 if3 if4 if5 local1 local2 ops1 ops2 var1 var2		\
    while1 while2

FAILS = assign1 assign2 assign3 dead1 dead2 expr1 expr2 for1 for2	\
    for3 for4 for5 func1 func2 func3 func4 func5 func6 func7 func8	\
    func9 global1 global2 if1 if2 if3 nomain return1 return2 while1	\
    while2

TESTFILES = $(TESTS:%=test-%.mc) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.mc) $(FAILS:%=fail-%.err)

TARFILES = ast.ml codegen.ml Makefile lava.ml parser.mly README scanner.mll \
	semant.ml testall.sh $(TESTFILES:%=tests/%)

miniMap-llvm.tar.gz : $(TARFILES)
	cd .. && tar czf miniMap-llvm/miniMap-llvm.tar.gz \
		$(TARFILES:%=miniMap-llvm/%)
