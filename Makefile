all: forkapp noforkapp

forkapp: forkapp.c
	gcc -g -Wall -fno-stack-protector -o forkapp forkapp.c

noforkapp: noforkapp.c
	gcc -g -Wall -fno-stack-protector -o noforkapp noforkapp.c

clean:
	rm -f *.o forkapp noforkapp
