TEX_MAIN       := main
TEX_COMPONENTS := abstract preface abbrev acknowledgements body body/intro body/conclusion
CHAPTERS       := body-part1

CHAPTERS := $(addprefix body/,$(addsuffix .tex,$(CHAPTERS)))

all: main.pdf
.PHONY: clean

PDFLATEX=  pdflatex
BIBTEX=    bibtex
LS=        ls -1
RM=        rm -f

$(TEX_MAIN).pdf: $(addsuffix .tex,$(TEX_MAIN) $(TEX_COMPONENTS)) $(CHAPTERS)
	$(PDFLATEX) $<

	# Compile for list of abbreviations
	makeindex $(TEX_MAIN).nlo -s nomencl.ist -o $(TEX_MAIN).nls

	# Compile for References
	$(BIBTEX) $(TEX_MAIN)

	# Make pdf document
	$(PDFLATEX) $<

clean:
	$(RM) *.aux $(addprefix $(TEX_MAIN)., \
		toc lot lof log synctex.gz bbl blg ilg nls nlo pdf)
