.PHONY: all clean update build

BUILD=pybase16
REPO=$(shell pwd)
TEMPLATE=$(shell basename ${REPO})
THEME_DIR_THEMES=themes
THEME_DIR_COLORS=colors
TEMPLATE_DIR=templates
OUTPUT=output

all: update build

update:
	$(BUILD) update

build:
	$(BUILD) build -t ${REPO} -o ${OUTPUT}
	rm -rf ${THEME_DIR_THEMES}
	rm -rf ${THEME_DIR_COLORS}
	mv ${OUTPUT}/${TEMPLATE}/${THEME_DIR_THEMES}/ ${THEME_DIR_THEMES}/
	mv ${OUTPUT}/${TEMPLATE}/${THEME_DIR_COLORS}/ ${THEME_DIR_COLORS}/

clean:
	rm -rf ${OUTPUT} ${TEMPLATE_DIR}/*/
