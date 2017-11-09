all:
	prelim
	ret2lib

prelim:
	$ gcc -std=c89 -m32 prelim.c -o prelim

ret2libc:
	$ gcc -std=c89 ret2libc.c get_ebp.S -g -o ret2libc

clean:
	rm -fv prelim ret2libc
	rm -fv *.o *~ \#*\# *.swp
