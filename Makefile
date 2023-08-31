CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan

SomeGame: src/*.cpp
	g++ $(CFLAGS) -o SomeGame src/*.cpp $(LDFLAGS)

.PHONY: test clean

test: SomeGame
	./SomeGame

clean:
	rm -f SomeGame