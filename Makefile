# VUT FIT MITAI
# MSZ 2021/2022
# Author: Vladimir Dusek
# Login: xdusek27

# Usage:
#   $ make
#   $ make pdf
#   $ make vlna
#   $ make clean
#   $ make clean-all

NAME = nnet

.PHONY: all pdf vlna clean clean-all

all:
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex

pdf: all clean

vdusek: pdf
	@mv $(NAME).pdf $(NAME)-vdusek.pdf

vlna:
	@vlna -l $(NAME)*.tex

clean:
	@rm -f *.dvi *.log *.aux *~ *.blg *.bbl *.toc *.out *.lof *.ptc *.fdb_latexmk *.fls *.synctex.gz *.synctex\(busy\)

clean-all: clean
	@rm -f $(NAME).pdf
