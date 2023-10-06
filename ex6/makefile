all:
	nasm -f elf32 example6.asm -o example6.o
	ld -m elf_i386 example6.o -o example6

run: all
	./example6

clean:
	rm -f example6 example6.o
