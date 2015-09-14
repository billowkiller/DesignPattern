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
CPPFLAGS=-D_GNU_SOURCE \
  -D__STDC_LIMIT_MACROS \
  -DVERSION=\"1.9.8.7\"

.PHONY:all
all: strategy
	@echo "make all done"

.PHONY:clean
clean:
	rm -rf strategy

strategy: strategy.cc
	$(CC) strategy.cc -o strategy
