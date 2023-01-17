ucomb: umat.f add.cpp
	ifort -fPIC -O2 -c umat.f
	icpc -fPIC -O2 -c add.cpp
	ld -r umat.o add.o -o ucomb.o
abqrun: ucomb
	abaqus job=comp input=mesh64_std.inp user=ucomb.o
clean:
	rm umat.o add.o ucomb.o
	rm comp.*
