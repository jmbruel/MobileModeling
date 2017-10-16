#-----------------------------------------------------
DZSLIDES=../asciidoctor-backends/slim/dzslides
DECKJS=../..asciidoctor-deck.js/templates/haml/
#STYLE=../POO/COO/stylesheets/golo-jmb.css
#STYLE=../asciidoctor-stylesheet-factory/stylesheets/jmb.css
#STYLE=../asciidoctor-stylesheet-factory/stylesheets/asciidoctor.css
#ASCIIDOCTOR=asciidoctor  -a icons=font -a linkcss! -a data-uri
ASCIIDOCTOR=asciidoctor -a icons=font
EXT=adoc
OUTPUT=.
SITE=../teaching
#THEME=colony
THEME=riak
#The valid options are coderay, highlightjs, prettify, and pygments.
HIGHLIGHT=pygments
MAIN=main
#-----------------------------------------------------

all: $(OUTPUT)/$(MAIN).html $(OUTPUT)/$(MAIN).slides.html

$(OUTPUT)/%.html: %.$(EXT)
	@echo '==> Compiling asciidoc files to generate HTML'
	$(ASCIIDOCTOR) -b html5 \
		-a numbered \
		-a toc2 \
		-a data-uri \
		-r asciidoctor-diagram \
		-a source-highlighter=$(HIGHLIGHT) \
		-o $@ $<

$(OUTPUT)/%.dzslides.html: %.$(EXT) *.asc
	@echo '==> Compiling asciidoc files to generate Dzslides'
	$(ASCIIDOCTOR) -b dzslides \
		-T $(DZSLIDES) -E slim \
		-a slides -a dzslides \
		-r asciidoctor-diagram \
		-a styledir=. \
		-a stylesheet=$(STYLE) \
		-a source-highlighter=$(HIGHLIGHT) \
		-o $@ $<

caseStudy.html: caseStudy.$(EXT)
	@echo '==> Compiling asciidoc files to generate HTML'
	$(ASCIIDOCTOR) -b html5 \
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
