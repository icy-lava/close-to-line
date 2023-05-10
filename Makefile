.PHONY: run size
run: main.lua
	lovec.exe .

main.lua: main.moon
	moonc main.moon

size:
	wc -c main.moon