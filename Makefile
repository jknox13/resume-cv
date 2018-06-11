.PHONY: clean

TEXCOMPILER = xelatex

SOURCE_DIR = source
DOCUMENT_SRCS = $(shell find $(SOURCE_DIR) -name '*.tex')
DOCUMENTS_DIR = documents

resume: $(SOURCE_DIR)/resume.tex $(DOCUMENT_SRCS)
	TEXINPUTS=".:$(SOURCE_DIR)/:" $(TEXCOMPILER) -output-directory=$(DOCUMENTS_DIR) $<

clean:
	rm -f $(DOCUMENTS_DIR)/*
