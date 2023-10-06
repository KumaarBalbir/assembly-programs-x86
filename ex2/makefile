all:
	nasm -f elf32 example2.asm -o example2.o
	ld -m elf_i386 example2.o -o example2

run: all
	./example2

clean:
	rm -f example2 example2.o
