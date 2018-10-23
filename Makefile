.PHONY: format lint setup build test serve

format:
	find . -not -path '*/\.*' -name "*.hs" -exec brittany --write-mode=inplace {} \;

lint:
	hlint src/ app/ test/

setup:
	stack install

build:
	stack build

test:
	stack test

serve:
	stack exec line-type-exe
