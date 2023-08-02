"make A"
###Compile main.c without library###

"make B"
###Compile main.c with libhello.a###

"make C"
###Compile main.c with libhello.so###
###You should enter "export LD_LIBRARY_PATH=$(pwd):$LD_LIBRARY_PATH" before "make C"###

"make clean"
###Clean all files created by Makefile###
