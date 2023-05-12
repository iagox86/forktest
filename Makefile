all: forkapp noforkapp

forkapp: forkapp.c
	gcc -Wall -fno-stack-protector -m32 -o forkapp forkapp.c

noforkapp: noforkapp.c
	gcc -Wall -fno-stack-protector -m32 -o noforkapp noforkapp.c

clean:
	rm -f *.o forkapp noforkapp
