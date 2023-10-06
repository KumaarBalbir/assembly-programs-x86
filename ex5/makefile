all:
	nasm -f elf32 example5.asm -o example5.o
	ld -m elf_i386 example5.o -o example5

run: all
	./example5

clean:
	rm -f example5 example5.o
