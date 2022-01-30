TEX      = lualatex
BIBTEX   = bibtex
OPTIONS  = -synctex=1 --interaction=nonstopmode -file-line-error
DOCUMENT = template 

dev: develop
develop:
	@latexmk -pvc -silent -pdflatex="$(TEX) $(OPTIONS) %O %S" $(DOCUMENT).tex

pdf:
	@latexmk -pdf -bibtex -pdflatex="$(TEX) $(OPTIONS) %O %S" $(DOCUMENT).tex

clean:
	@echo "Cleaning..."
	@cat .art/maid.ascii
	@latexmk -C -silent
	@echo "...✓ done!"
