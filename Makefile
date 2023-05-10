.PHONY: run serve build clean size

run: main.lua
	lovec.exe .

serve: build/web
	python -m http.server --bind 127.0.0.1 --directory $<

build: build/close_to_line.love build/web

build/close_to_line.love: main.lua v.lua
	mkdir -p build
	rm -f close_to_line.love
	7z a -bd -tzip -mx0 -r build/close_to_line.love main.lua v.lua

build/web: build/close_to_line.love
	love.js -c --title 'close to line' $< $@

main.lua: main.moon
	moonc main.moon

size:
	wc -c main.moon

clean:
	rm -rf build