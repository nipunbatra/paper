MAIN=paper
REFS=refs


pdf: $(MAIN).tex $(REFS).bib 
	pdflatex -interaction=nonstopmode $(MAIN)
	bibtex $(MAIN)
	pdflatex -interaction=nonstopmode $(MAIN)
	pdflatex -interaction=nonstopmode $(MAIN)

clean:
	rm *.aux
	rm *.bbl
	rm *.log
	rm *.blg
	rm $(MAIN).pdf
