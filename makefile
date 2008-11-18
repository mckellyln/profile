.PHONY: all
all: build/profile

build/profile: build/profile.o
	gcc $(^) -o $(@)

build/profile.o: src/profile.cpp
	@mkdir -p $(dir $(@))
	g++ -fno-rtti -fno-exceptions -Wall -g -O0 -c $(<) -o $(@)

.PHONY: clean
clean:
	rm -rf build