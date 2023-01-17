Simple example for mixed C++ and Fortran subroutines for Abaqus

In this example, the fortran file "umat.f" contains umat subroutine which is called by Abaqus.
In the umat subroutine a call is made to C++ function my_add which is implemented in "add.cpp".
The file "mesh64_std.inp" is the input file for simple compression simulation.

***To run this example, simply type:
make abqrun

This will first compile umat.f with ifort (can use gfortran) and add.cpp with
icpc (can use g++) and then combines the object file into one object file ucomb.o

Finally Abaqus is run with "mesh64_std.inp" input and "ucomb.o" is specified for linking.
