all:
	nasm -f elf32 example1.asm -o example1.o
	ld -m elf_i386 example1.o -o example1

run: all
	./example1

clean:
	rm -f example1 example1.o
