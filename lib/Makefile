mymath_static: add.o divi.o mult.o sub.o
	mkdir -p build/static
	ar rsc build/static/libmymath.a add.o divi.o mult.o sub.o
 
mymath_dynamic: add.o divi.o mult.o sub.o
	mkdir -p build/dynamic
	gcc -shared add.o divi.o mult.o sub.o -o build/dynamic/libmymath.so
 
add.o: src/add.c include/mymath.h
	gcc -c src/add.c -o add.o -I include -fPIC
 
divi.o: src/divi.c include/mymath.h
	gcc -c src/divi.c -o divi.o -I include -fPIC
 
mult.o: src/mult.c include/mymath.h
	gcc -c src/mult.c -o mult.o -I include -fPIC
 
sub.o: src/sub.c include/mymath.h
	gcc -c src/sub.c -o sub.o -I include -fPIC
 
clean:
	rm *.o build/static/libmymath.a build/dynamic/libmymath.so; rm -r build