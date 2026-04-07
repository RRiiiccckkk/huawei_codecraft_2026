CXX      := g++
CXXFLAGS := -std=c++17 -O2
TARGET   := solution

.PHONY: all run clean

all:
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)
