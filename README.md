A LaTeX template for writing a [UBC Thesis](https://www.grad.ubc.ca/current-students/dissertation-thesis-preparation/structure-theses-dissertations).

# Files
- [`main.tex`](main.tex) dictates the order of the components and the format of the title page. The table of contents, list of tables, and list of figures are generated for you, but the list of illustrations is not. The glossary, dedication, and appendices are optional and was also left out.
- [`body.tex`](body.tex) contains the introduction, research chapters, and conclusion. To add content, look in the [`body/`](body/) directory.

## Components
Other files include:
- [`abstract.tex`](abstract.tex) (which also contains the lay summary)
- [`preface.tex`](preface.tex)
- [`abbrev.tex`](abbrev.tex) for the list of abbreviations
- [`acknowledgements.tex`](acknowledgements.tex) (optional)

For references, we use `bibtex`. The indicated \*bib file contain examples of references which can be called using `\cite{...}` (examples in `acknowledgements.tex`).

- [`references/biblio.bib`](references/biblio.bib)

# Usage
```
# To generate 'main.pdf'
make

# To get rid of all generated files
make clean
```

# Acknowledgements
Content taken from the [UBC: STRUCTURE OF THESES AND DISSERTATIONS](https://www.grad.ubc.ca/current-students/dissertation-thesis-preparation/structure-theses-dissertations) page on November 19, 2017.
