all:
	nasm -f elf32 example4.asm -o example4.o
	ld -m elf_i386 example4.o -o example4

run: all
	./example4

clean:
	rm -f example4 example4.o
