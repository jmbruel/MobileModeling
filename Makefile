#-----------------------------------------------------
MAIN=main
MAINDIR=/Users/bruel/Dropbox/dev/MobileModeling
ICONSDIR=images/icons
IMAGESDIR=./images
DZSLIDES=../asciidoctor-backends/slim/dzslides
#STYLE=/Users/bruel/dev/POO/COO/stylesheets/golo-jmb.css
#STYLE=/Users/bruel/Dropbox/dev/asciidoctor-stylesheet-factory/stylesheets/readthedocs.css
ASCIIDOCTOR=asciidoctor
#ASCIIDOCTOR=asciidoctor -a icons=font -a stylesheet=../font-awesome-4.4.0/css/font-awesome.min.css -a iconsdir=$(ICONSDIR)  -a imagesdir=$(IMAGESDIR)
EXT=asc
OUTPUT=.
SITE=../jmbruel.github.io/teaching
#-----------------------------------------------------

all: $(OUTPUT)/$(MAIN).html $(OUTPUT)/$(MAIN).slides.html

$(OUTPUT)/%.html: %.$(EXT)
	@echo '==> Compiling asciidoc files to generate HTML'
	$(ASCIIDOCTOR) -b html5 \
		-a numbered \
		-a stylesheet=$(STYLE) \
		-a data-uri \
		-a toc2 \
		-r asciidoctor-diagram \
		-o $@ $<

$(OUTPUT)/%.slides.html: %.$(EXT)
	@echo '==> Compiling asciidoc files to generate Deckjs'
	$(ASCIIDOCTOR) -b dzslides \
		-T $(DZSLIDES) -E slim \
		-a slides \
		-r asciidoctor-diagram \
		-o $@ $<

caseStudy.html: caseStudy.$(EXT)
	@echo '==> Compiling asciidoc files to generate HTML'
	$(ASCIIDOCTOR) -b html5 \
		-a imagesdir=$(IMAGESDIR) \
		-a numbered \
		-a stylesheet=$(STYLE) \
		-a data-uri \
		-a toc2 \
		-r asciidoctor-diagram \
		-o $@ $<

deploy:
	cp $(MAIN).html $(SITE)/MobileModeling.html
	cd $(SITE)

clean:
	rm *.cache
	rm images/*.cache
	rm diag-*.png
	rm images/diag-*.png
