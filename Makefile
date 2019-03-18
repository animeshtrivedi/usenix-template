.PHONY: all clean paper

all:  paper 
#\
#    tikz/storage-traditional.pdf \
#    tikz/storage-disaggregated.pdf \
#    tikz/storage-disaggregated-ops.pdf \
#    tikz/ebpf-data.pdf \
#    paper

tikz/%.pdf: tikz/%.tex
	xelatex -output-directory=tikz/ $<
	pdfcrop $@

paper:
	latex-mk --pdflatex main.tex || true
