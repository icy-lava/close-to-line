.PHONY: run size
run: main.lua
	lovec.exe .

build: main.lua
	mkdir -p build
	rm -f close_to_line.love
	7z a -bd -tzip -mx0 -r build/close_to_line.love main.lua v.lua

main.lua: main.moon
	moonc main.moon

size:
	wc -c main.moon