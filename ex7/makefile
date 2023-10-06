all:
	nasm -f elf32 example7.asm -o example7.o
	ld -m elf_i386 example7.o -o example7

run: all
	./example7

clean:
	rm -f example7 example7.o
