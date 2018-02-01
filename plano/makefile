default:
	pdflatex tccplanoudesc.tex
	bibtex tccplanoudesc.aux
	pdflatex tccplanoudesc.tex
	pdflatex tccplanoudesc.tex

watch:
	watch -n 30 make

install:
	sudo apt-get install texlive-full
	apm install pdf-view
