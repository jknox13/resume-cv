.PHONY: clean

SOURCE_DIR=source
DOCUMENTS_DIR=documents


resume: $(SOURCE_DIR)/resume.tex
	TEXINPUTS=".:$(SOURCE_DIR)/:" xelatex -output-directory=$(DOCUMENTS_DIR) $<

bib:
	BIBINPUTS=".:$(SOURCE_DIR)/:" bibtex $(DOCUMENTS_DIR)/resume

clean:
	rm -f $(DOCUMENTS_DIR)/*.{aux,log}
