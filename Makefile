CC=gcc
CXX=g++
CXXFLAGS=-g \
  -pipe \
  -W \
  -Wall \
  -fPIC
CFLAGS=-g \
  -pipe \
  -W \
  -Wall \
  -fPIC

TARGET=strategy abstract_facotry

.PHONY:all
all: $(TARGET)
	@echo "make all done"

.PHONY:clean
clean:
	rm -f $(TARGET)

strategy: strategy.cc
	$(CC) strategy.cc -o strategy

abstract_facotry: abstract_facotry.cc
	$(CC) abstract_facotry.cc -o abstract_facotry 
