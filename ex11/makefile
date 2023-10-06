all:
	nasm -f elf32 add42.asm -o add42.o
	gcc -m32 add42.o main.c -o example11 
  # note that you need 32bit libraries and runtime environment to run successfully
run: alls
	./example11

clean:
	rm -f example11 add42.o
