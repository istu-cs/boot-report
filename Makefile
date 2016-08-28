%.pdf: %.tex
	xelatex $<
	xelatex $<

main.pdf: main.tex groups.ps

open: main.pdf
	xdg-open $<

%.ps: %.dot
	dot -Tps -o$@ $<

%.png: %.dot
	dot -Tpng -o$@ $<

clean:
	rm -f main.pdf *.aux *.log *.toc

.PHONY: open clean
