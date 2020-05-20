all: main.pdf

main.pdf: main.tex cours.sty
	mkdir -p .build
	xelatex -output-directory .build main.tex
	mv .build/main.pdf .
