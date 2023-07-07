# Makefile
CC = tcc
CFLAGS = -Wall -O2
LDFLAGS = 
TARGET = hello

all: $(TARGET)

$(TARGET): hello.o
	$(CC) $(LDFLAGS) -o $@ $^

hello.o: hello.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(TARGET)
