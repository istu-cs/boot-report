%.pdf: %.tex
	xelatex $<
	xelatex $<

open: main.pdf
	xdg-open $<

%.ps: %.dot
	dot -Tps -o$@ $<

clean:
	rm -f main.pdf *.aux *.log *.toc

.PHONY: open clean
