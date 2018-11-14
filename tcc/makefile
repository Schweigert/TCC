default:
	xelatex tccudesc
	bibtex tccudesc
	xelatex tccudesc
	xelatex tccudesc
	make sync_dropbox

watch:
	watch -n 30 make

install:
	sudo apt-get install texlive-full
	apm install pdf-view

clean:
	rm tccudesc.bbl

sync_dropbox:
	# cp -rf . "/home/marlon/Dropbox/UDESC/BCC/Análise de Gerenciamento de Recursos em MMORPG/TCC"
