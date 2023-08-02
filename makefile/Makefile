#makefile
HEAD=hello.h

.PHONY: clean A B C

A:	A.out
	./A.out

A.out:	main.o hello.o
	gcc $^ -o $@

B:	B.out
	./B.out

B.out:	main.o libhello.a
	gcc $< -static -L./ -lhello -o $@

C:	C.out
	./C.out

C.out:	main.c hello.c
	gcc -shared -fPIC -o libhello.so hello.c
#	gcc -shared -Wl,-soname,libhello.so.1 -o libhello.so.1.0.0 -fPIC hello.c
#	ln -s libhello.so.1 libhello.so
#	ln -s libhello.so.1.0.0 libhello.so.1
	gcc $< -L./ -lhello -o $@

%.o:	%.c $(HEAD)
	gcc -c $<

libhello.a:	hello.o
	ar rcs $@ $^

clean:	
	$(RM) *.o *.a *.so.* *.out *.so
