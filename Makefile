# Make sure ocamlbuild can find opam-managed packages: first run
#
# eval `opam config env`

# Easiest way to build: using ocamlbuild, which in turn uses ocamlfind

.PHONY : all
all : miniMap.native printbig.o split_by_size.o fileLibrary.o miniMap.o

.PHONY : miniMap.native
miniMap.native :
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis,str -cflags -w,+a-4 \
		miniMap.native

# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log *.diff miniMap scanner.ml parser.ml parser.mli
	rm -rf printbig
	rm -rf split_by_size
	rm -rf fileLibrary
	rm -rf *.cmx *.cmi *.cmo *.cmx *.o *.s *.ll *.out *.exe
	find . -name "smallFileName_*" -print0 | xargs -0 rm

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

# Testing the "printbig" example

printbig : printbig.c
	cc -o printbig -DBUILD_TEST printbig.c

split_by_size : split_by_size.c
	cc -o split_by_size -DBUILD_TEST split_by_size.c

fileLibrary : fileLibrary.c
	cc -o fileLibrary -DBUILD_TEST fileLibrary.c

miniMap : miniMap.c
	cc -o miniMap -DBUILD_TEST miniMap.c


### Generated by "ocamldep *.ml *.mli" after building scanner.ml and parser.ml
ast.cmo :
ast.cmx :
codegen.cmo : ast.cmo
codegen.cmx : ast.cmx
miniMap.cmo : semant.cmo scanner.cmo parser.cmi codegen.cmo ast.cmo
miniMap.cmx : semant.cmx scanner.cmx parser.cmx codegen.cmx ast.cmx
parser.cmo : ast.cmo parser.cmi
parser.cmx : ast.cmx parser.cmi
scanner.cmo : parser.cmi
scanner.cmx : parser.cmx
semant.cmo : ast.cmo
semant.cmx : ast.cmx
parser.cmi : ast.cmo

# Building the tarball

TESTS = add1 arith1 arith2 arith3 fib for1 for2 func1 func2 func3	\
    func4 func5 func6 func7 func8 gcd2 gcd global1 global2 global3	\
    hello helloworld if1 if2 if3 if4 if5 local1 local2 ops1 ops2 var1 var2		\
    while1 while2 split_by_size  fileLibrary miniMap1 miniMap2

FAILS = assign1 assign2 assign3 dead1 dead2 expr1 expr2 for1 for2	\
    for3 for4 for5 func1 func2 func3 func4 func5 func6 func7 func8	\
    func9 global1 global2 if1 if2 if3 nomain return1 return2 while1	\
    while2

TESTFILES = $(TESTS:%=test-%.mm) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.mm) $(FAILS:%=fail-%.err)

TARFILES = ast.ml codegen.ml Makefile _tags miniMap.ml parser.mly README \
        scanner.mll semant.ml testall.sh printbig.c fileLibrary.c miniMap.c split_by_size.c arcade-font.pbm font2c \
	$(TESTFILES:%=tests/%)

miniMap-llvm.tar.gz : $(TARFILES)
	cd .. && tar czf miniMap-llvm/miniMap-llvm.tar.gz \
		$(TARFILES:%=miniMap-llvm/%)
