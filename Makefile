# .PHONY: examples 
.PHONY: sudeep

CC = lualatex
# EXAMPLES_DIR = examples
SUDEEP_DIR = sudeep

# RESUME_DIR = examples/resume
# CV_DIR = examples/cv
# RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
SUDEEP_SRCS = $(shell find $(SUDEEP_DIR)/subtopics -name '*.tex')

# examples: $(foreach x, coverletter cv resume, $x.pdf)

sudeep: sudeep.pdf

sudeep.pdf: $(SUDEEP_DIR)/main.tex $(SUDEEP_SRCS)
	$(CC) -jobname=Sudeep_Resume -output-directory=$(SUDEEP_DIR) $<

# resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# clean:
# 	rm -rf $(EXAMPLES_DIR)/*.pdf
# 	rm -rf $(SUDEEP_DIR)/*.pdf
# 	rm -rf $(SUDEEP_DIR)/*.aux $(SUDEEP_DIR)/*.log $(SUDEEP_DIR)/*.out