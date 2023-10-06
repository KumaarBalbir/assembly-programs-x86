all:
	nasm -f elf32 example9.asm -o example9.o
	ld -m elf_i386 example9.o -o example9

run: all
	./example9

clean:
	rm -f example9 example9.o
