all: forkapp noforkapp onlyyoucanpreventforking.so patch

forkapp: forkapp.c
	gcc -g -Wall -fno-stack-protector -o forkapp forkapp.c

noforkapp: noforkapp.c
	gcc -g -Wall -fno-stack-protector -o noforkapp noforkapp.c

onlyyoucanpreventforking.so:
	gcc -shared -fPIC -o onlyyoucanpreventforking.so onlyyoucanpreventforking.c

patch:
	nasm -o patch patch.asm

clean:
	rm -f *.o forkapp noforkapp onlyyoucanpreventforking.so patch
