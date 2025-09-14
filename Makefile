# Makefile for cache_test.c

CC      := gcc
CFLAGS  := -Wall -Wextra -O2
TARGET  := cache_test
SRC     := aca_ch2_cs2.c
OBJ     := $(SRC:.c=.o)

# Default target
all: $(TARGET)

# Build target
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Compile step
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Run the program
run: $(TARGET)
	./$(TARGET)

# Remove build artifacts
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean run
