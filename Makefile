.PYONY: build build/release run

run:
	crystal run ./src/yes.cr

build:
	crystal build -o ./bin/yes ./src/yes.cr

build/release:
	crystal build -o ./bin/yes --release ./src/yes.cr

pv:
	crystal run --release ./src/yes.cr  | pv -r > /dev/null
