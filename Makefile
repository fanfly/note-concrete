.PHONY: all clean
all: note-concrete.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex='pdflatex -halt-on-error' $<
	latexmk -quiet -c

clean:
	latexmk -quiet -C
