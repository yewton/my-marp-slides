SRC := $(wildcard */PITCHME.md)
INDEX := docs/index.html
HTML := $(SRC:%.md=docs/%.html)
PDF := $(SRC:%/PITCHME.md=pdfs/%.pdf)

.PHONY: all clean

all: node_modules $(INDEX) $(PDF)

node_modules: package.json
	npm i

$(INDEX): $(HTML)
	npx indexifier --exclude '(assets)' --no-link-folders --html $(@D) > $@

docs/%.html: %.md
	rm -fr $(@D) && mkdir -p $(@D)
	[ -d $(<D)/assets ] && cp -r $(<D)/assets $(@D)/ || true
	npx marp $< -o $@

pdfs/%.pdf: %/PITCHME.md
	npx marp --pdf --allow-local-files $< -o $@

clean:
	rm -fr node_modules docs pdfs
