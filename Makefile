all: main.pdf

main.pdf: main.tex cours.sty bib.bib
	mkdir -p .build
	xelatex -output-directory .build main
	biber -output-directory .build main
	xelatex -output-directory .build main
	mv .build/main.pdf .

clean:
	rm -rf main.pdf .build
