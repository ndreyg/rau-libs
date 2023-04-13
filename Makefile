myprogram_static: myprogram.o
	gcc myprogram.o -lmymath -L lib/build/static -o myprogram_static
 
myprogram_dynamic: myprogram.o
	gcc myprogram.o -lmymath -L lib/build/dynamic -o myprogram_dynamic
 
myprogram.o: myprogram.c
	gcc -c myprogram.c -I lib/include
 
clean:
	rm myprogram.o myprogram_dynamic myprogram_static
