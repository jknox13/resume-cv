.PHONY: clean

TEXCOMPILER = lualatex

SOURCE_DIR = source
ASSETS_DIR = $(SOURCE_DIR)/assets
DOCUMENT_SRCS = $(shell find $(ASSETS_DIR) -name '*.tex')
DOCUMENTS_DIR = documents

resume: $(SOURCE_DIR)/resume.tex $(DOCUMENT_SRCS)
	TEXINPUTS=".:$(SOURCE_DIR)/:" $(TEXCOMPILER) -output-directory=$(DOCUMENTS_DIR) $<

cv: $(SOURCE_DIR)/cv.tex $(DOCUMENT_SRCS)
	TEXINPUTS=".:$(SOURCE_DIR)/:" $(TEXCOMPILER) -output-directory=$(DOCUMENTS_DIR) $<

coverletter: $(SOURCE_DIR)/coverletter.tex
	TEXINPUTS=".:$(SOURCE_DIR)/:" $(TEXCOMPILER) -output-directory=$(DOCUMENTS_DIR) $<

clean:
	rm -f $(DOCUMENTS_DIR)/*
