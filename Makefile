LATEX= pdflatex -shell-escape
BIBTEX= bibtex
XDVI = xdvi
DVIPDF= dvipdfm -p letter
PS2PDF= ps2pdf
DVIPS= dvips -t letter -P pdf
RM = /bin/rm -f
CAT = cat
ISPELL = ispell
SORT = sort

MAINDOC = main
MAINPDF = ${MAINDOC}.pdf

PROPOSAL = proposal
PROPOSALPDF = ${PROPOSAL}.pdf

all: clean
	${LATEX} ${MAINDOC}.tex
	${BIBTEX} ${MAINDOC}.aux
	${LATEX} ${MAINDOC}.tex
	${LATEX} ${MAINDOC}.tex

proposal: clean
	${LATEX} ${PROPOSAL}.tex
	${BIBTEX} ${PROPOSAL}.aux
	${LATEX} ${PROPOSAL}.tex
	${LATEX} ${PROPOSAL}.tex



clean:
	rm -f *out *aux *bbl *blg *log *.tex~ *.dvi *.fdb_lat* *.fls 
	rm -f *converted-to.pdf
	rm -f ${MAINDOC}.pdf ${PROPOSAL}.pdf
	rm -Rf auto/
	rm -Rf _minted-paper/ 
