
TITLE = ICERM_Application


#----------------------------------------------------------------------------
LATEX = lualatex
#LATEX = pdflatex
BIBTEX = bibtex

RUN_LATEX = $(LATEX) $(TITLE)
RUN_BIBTEX = $(BIBTEX) $(TITLE)


all:		
				$(RUN_LATEX); $(RUN_BIBTEX); $(RUN_LATEX); $(RUN_LATEX);



# cleans anything that can be re-generated automatically, plus emacs backups
clean: 
				rm -f *synctex.gz *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg *lbl	\
				*.inx *.toc *.out $(DVIFILES) $(PSFILES) $(TITLE).pdf *~
