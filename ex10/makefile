all:
	nasm -f elf32 example10.asm -o example10.o
	gcc -m32 example10.o -o example10 
  # note that you need 32bit libraries and runtime environment to run successfully.
run: all
	./example10

clean:
	rm -f example10 example10.o
