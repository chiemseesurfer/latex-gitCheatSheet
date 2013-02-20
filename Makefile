GCHSHV = git-cheatsheet-visual
GCHSH = git-cheatsheet

$(GCHSHV): $(GCHSHV).pdf
$(GCHSH): $(GCHSH).pdf

$(GCHSHV).pdf: $(GCHSHV).tex
	pdflatex --shell-escape $(GCHSHV).tex

$(GCHSH).pdf: $(GCHSH).tex
	pdflatex --shell-escape $(GCHSH).tex

clean:
	-rm $(GCHSHV).aux
	-rm $(GCHSH).aux
	-rm $(GCHSHV).log
	-rm $(GCHSH).log
	-rm $(GCHSHV).pdf
	-rm $(GCHSH).pdf
