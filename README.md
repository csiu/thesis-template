LaTeX template for [UBC Thesis](https://www.grad.ubc.ca/current-students/dissertation-thesis-preparation/structure-theses-dissertations).

- `main.tex` dictates the order of the components and the format of the title page. The table of contents, list of tables, and list of figures are generated for you, but the list of illustrations is not (and you will need to set this up if you have illustrations in your thesis). The glossary and dedication was optional and thus was left out. The appendices was also left out.
- `body.tex` contains the intro, body, and conclusion contained in the `body/`  directory

## Components
- `abstract.tex`
- `preface.tex`
- `abbrev.tex` - need to run `pdflatex main.tex` then compile it with `makeindex main.nlo -s nomencl.ist -o main.nls` and `pdflatex main.tex` again.
- `acknowledgements.tex` - optional
- `references/biblio.bib` - for references

## Usage
```
# To generate
make

# To get rid of all generated files
make clean
```
