CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan

SomeGame: src/*.cpp
	g++ $(CFLAGS) -o bin/SomeGame src/*.cpp $(LDFLAGS)

.PHONY: test clean

test: SomeGame
	./bin/SomeGame

clean:
	rm -f bin/SomeGame