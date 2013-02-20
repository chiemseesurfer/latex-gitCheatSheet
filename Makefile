GCHSHV = git-cheatsheet-visual
GCHSH = git-cheatsheet

$(GCHSHV): $(GCHSHV).pdf
$(GCHSH): $(GCHSH).pdf

$(GCHSHV).pdf: $(GCHSHV).tex
	pdflatex --shell-escape $(GCHSHV).tex

$(GCHSH).pdf: $(GCHSH).tex
	pdflatex --shell-escape $(GCHSH).tex

clean:
	-rm $(GCHSHV).ps
	-rm $(GCHSH).ps
	-rm $(GCHSHV).pdf
	-rm $(GCHSH).pdf
	-rm $(GCHSHV).{log,aux,bbl,blg,dvi,idx,ilg,ind,lof,lot,not,toc}
	-rm $(GCHSH).{log,aux,bbl,blg,dvi,idx,ilg,ind,lof,lot,not,toc}
