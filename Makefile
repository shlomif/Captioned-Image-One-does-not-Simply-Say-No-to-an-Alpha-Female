SVG = one-does-not-simply-say-no-to-an-alpha-female.svg
PNG = $(SVG).png
JPEG = $(SVG).jpg
WEBP = $(SVG).webp

WIDTH = 600

all: $(PNG) $(JPEG) $(WEBP) $(PHOTO_DEST)

$(PNG): $(SVG) $(PHOTO_DEST)
	inkscape --export-png=$@ --export-width=$(WIDTH) $<
	optipng $@

$(WEBP): $(PNG)
	gm convert $< $@

$(JPEG): $(PNG)
	gm convert $< $@
