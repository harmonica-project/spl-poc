#SOURCES_JS := $(shell find $(SOURCEDIR) -name '*.js.tpl')
#SOURCES_SOL := $(shell find $(SOURCEDIR) -name '*.sol.tpl')

STORAGE_TYPE:=${STORAGE_TYPE}
STORAGE_VARIABLE_TYPE:=${STORAGE_VARIABLE_TYPE}


all: js sol html

js: 
	mkdir -p dist/js
	jinja2 js/scripts.js.tpl -D data_storage=${STORAGE_TYPE} > dist/js/scripts.js
sol: 
	mkdir -p dist/sol
	jinja2 sol/contract.sol.tpl -D type=${STORAGE_VARIABLE_TYPE} > dist/sol/contract.sol

html: 
	jinja2 html/index.html.tpl -D type=${STORAGE_TYPE} > dist/index.html



clean:
	rm -rf ./dist/*


.PHONY : js sol html