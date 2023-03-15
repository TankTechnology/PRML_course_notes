FILES = $(shell find . -name '*.md')

all: $(FILES:.md=.pdf)

%.pdf: %.md
	pandoc $< -o $@
	mv $@ notes_pdf/

.PHONY: clean

clean:
	rm -f notes_pdf/*.pdf