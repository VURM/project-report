DOCUMENT=report
STATEMENT=statement

.PHONY: clean $(DOCUMENT).pdf all

all: final

final: statement bib glossary
	pdflatex -halt-on-error $(DOCUMENT)
	pdflatex -halt-on-error $(DOCUMENT)
	cp $(DOCUMENT).pdf $(DOCUMENT)-preview.pdf

build:
	pdflatex -halt-on-error $(DOCUMENT)

glossary: build
	makeglossaries $(DOCUMENT)

bib: build
	biber $(DOCUMENT)

clean:
	rm -f *.aux *.acn *.bbl *.dvi *.glg *.gls *.toc *.acr *.cb
	rm -f *.blg *.glo *.ilg *.ind *.ist *.idx *.alg *.lol *.cb2
	rm -f *.lof *.log *.lot *.aut *.out *.pdf */*.aux */*.log
	rm -f $(DOCUMENT)-blx.bib *.bcf $(DOCUMENT).run.xml

statement:
	pdflatex -halt-on-error $(STATEMENT)
	pdflatex -halt-on-error $(STATEMENT)

preview: build
	cp $(DOCUMENT).pdf $(DOCUMENT)-preview.pdf
