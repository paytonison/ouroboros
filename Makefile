.PHONY: pdf clean

OUT_DIR ?= build
PAPER_DIR ?= paper
MAIN_TEX ?= main.tex

pdf: $(OUT_DIR)/main.pdf

$(OUT_DIR)/main.pdf: $(PAPER_DIR)/$(MAIN_TEX) $(wildcard $(PAPER_DIR)/figures/*)
	@mkdir -p $(OUT_DIR)
	cd $(PAPER_DIR) && pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../$(OUT_DIR) $(MAIN_TEX)
	cd $(PAPER_DIR) && pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../$(OUT_DIR) $(MAIN_TEX)

clean:
	rm -rf $(OUT_DIR)
