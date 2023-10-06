all:
	nasm -f elf32 example8.asm -o example8.o
	ld -m elf_i386 example8.o -o example8

run: all
	./example8

clean:
	rm -f example8 example8.o
