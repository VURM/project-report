DOCUMENT=report
STATEMENT=statement

.PHONY: clean $(DOCUMENT).pdf all

all: final

final: bib glossary
	pdflatex $(DOCUMENT)
	pdflatex $(DOCUMENT)

build:
	pdflatex $(DOCUMENT)

glossary: build
	makeglossaries $(DOCUMENT)

bib: build
	bibtex $(DOCUMENT)

clean:
	rm -f *.aux *.acn *.bbl *.dvi *.glg *.gls *.toc *.acr *.cb
	rm -f *.blg *.glo *.ilg *.ind *.ist *.idx *.alg *.lol *.cb2
	rm -f *.lof *.log *.lot *.aut *.out *.pdf */*.aux */*.log

statement:
	pdflatex $(STATEMENT)
	pdflatex $(STATEMENT)
