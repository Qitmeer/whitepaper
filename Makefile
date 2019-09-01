SOURCE=qitmeer_whitepaper
CN_SOURCE=qitmeer_whitepaper_cn

all: en cn

en: $(SOURCE).tex
	pdflatex -interaction=errorstopmode -halt-on-error $(SOURCE).tex && \
	bibtex $(SOURCE) && \
	pdflatex -interaction=errorstopmode -halt-on-error $(SOURCE).tex && \
	pdflatex -interaction=errorstopmode -halt-on-error $(SOURCE).tex && \
	pdflatex -interaction=errorstopmode -halt-on-error $(SOURCE).tex

cn: $(CN_SOURCE).tex
	xelatex -interaction=errorstopmode -halt-on-error $(CN_SOURCE).tex && \
	bibtex $(CN_SOURCE) && \
	xelatex -interaction=errorstopmode -halt-on-error $(CN_SOURCE).tex && \
	xelatex -interaction=errorstopmode -halt-on-error $(CN_SOURCE).tex && \
	xelatex -interaction=errorstopmode -halt-on-error $(CN_SOURCE).tex

clean: clean_en clean_cn
clean_en: 
	rm -f *.log
	rm -f $(SOURCE).aux
	rm -f $(SOURCE).out
	rm -f $(SOURCE).bbl
	rm -f $(SOURCE).blg
clean_cn: 
	rm -f *.log
	rm -f $(CN_SOURCE).aux
	rm -f $(CN_SOURCE).out
	rm -f $(CN_SOURCE).bbl
	rm -f $(CN_SOURCE).blg
cleanpdf:
	rm -f $(SOURCE).pdf
	rm -f $(CN_SOURCE).pdf
