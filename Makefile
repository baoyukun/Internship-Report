THESIS = internship
TEX_DIR = tex
BIB_DIR = bib

# Do a cleanup then a make
# Reduce the amount of diagnostics generated
# Manually refresh your favorite PDF viewer
LATEXMK_OPT_BASE = -xelatex -gg -silent -view=none

# Continually update target whenever changes are made to source files
# Don't do timeout in pvc mode after inactivity, unless the computer is turned off
LATEXMK_OPT_PVC = $(LATEXMK_OPT_BASE) -pvc -pvctimeout-

.PHONY : all clean cleanall pvc debug

all: $(THESIS).pdf

$(THESIS).pdf : $(THESIS).tex $(TEX_DIR)/*.tex $(BIB_DIR)/*.bib sjtuthesis.cls sjtuthesis.cfg Makefile
	-latexmk $(LATEXMK_OPT_BASE) $(THESIS)

pvc :
	latexmk $(LATEXMK_OPT_PVC) $(THESIS)

debug :
	xelatex -no-pdf -halt-on-error $(THESIS)
	biber --debug $(THESIS)
	xelatex $(THESIS)
	xelatex $(THESIS)

clean :
	-@latexmk -c -silent 2> /dev/null
	-@rm -f $(TEX_DIR)/*.aux 2> /dev/null || true

cleanall :
	-@latexmk -C -silent 2> /dev/null
	-@rm -f $(TEX_DIR)/*.aux 2> /dev/null || true
