all:
	nasm -f elf32 example3.asm -o example3.o
	ld -m elf_i386 example3.o -o example3

run: all
	./example3

clean:
	rm -f example3 example3.o
