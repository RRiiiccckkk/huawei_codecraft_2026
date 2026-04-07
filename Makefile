CXX      := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra
TARGET   := bin/solution
SRC      := src/main.cpp

.PHONY: all build test clean

all: build

build:
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)
	@echo "Build successful: $(TARGET)"

test: build
	@if [ -f data/sample_input.txt ]; then \
		echo "Running sample test..."; \
		./$(TARGET) < data/sample_input.txt; \
	else \
		echo "No test data found. Place input files under data/"; \
	fi

clean:
	rm -rf bin/
	@echo "Cleaned."
