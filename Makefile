all: main.pdf

main.pdf: src/main.pdf
	mv src/main.pdf .

src/main.pdf:
	$(MAKE) -C src main.pdf

clean:
	$(MAKE) -C src clean
