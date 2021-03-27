LOCK := package-lock.json
SRC := $(wildcard */PITCHME.md)
INDEX := docs/index.html
HTML := $(SRC:%.md=docs/%.html)
PDF := $(SRC:%/PITCHME.md=pdfs/%.pdf)

.PHONY: all clean

all: $(LOCK) $(INDEX) $(PDF)

$(LOCK): package.json
	npm i && touch $(LOCK) # 実際に更新があろうと無かろうと次回のターゲットにしない為 touch する

$(INDEX): $(HTML)
	npx indexifier --exclude '(assets)' --no-link-folders --html $(@D) > $@

docs/%.html: %.md
	rm -fr $(@D) && mkdir -p $(@D)
	[ -d $(<D)/assets ] && cp -r $(<D)/assets $(@D)/ || true
	npx marp $< -o $@

pdfs/%.pdf: %/PITCHME.md
	npx marp --pdf --allow-local-files $< -o $@

clean:
	rm -fr docs pdfs
