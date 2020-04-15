MAIN= main
TEXPARTS= \
	bounding_eigenvalues.tex \
	graph_cut.tex \
	power_iteration.tex \
	slove_linear_system.tex \
	connected_components.tex \
	graph_laplacian.tex \
	main.tex \
	random_spanning_tree.tex \
	solving_linear_system.tex \
	dfn.tex \
	graph_sparsifier.tex \
	max_flow.tex \
	random_walk.tex

BIBPARTS= 
FIGPARTS= 
STYPARTS=
OTHER= 

ALL= $(MAIN).tex $(TEXPARTS) $(BIBPARTS) $(FIGPARTS) $(STYPARTS) $(OTHER)

all: $(ALL)
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex
	open $(MAIN).pdf


try: $(MAIN).tex
	pdflatex $(MAIN)


clean:
	\rm -f *.dvi $(MAIN).ps *.bbl *.aux *.log *.blg *.toc all.tar* uu \
	*~ *.bak *.lbl *.brf *.out

spotless: clean
	\rm -f $(MAIN).ps $(MAIN).pdf

