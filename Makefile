OBJS	= orthos.o
SOURCE	= orthos.cpp
HEADER	= orthos.hpp
OUT	= liborthos.so
CC	 = g++
FLAGS	 = -c -Wall -std=c++11 -O3 -fpic
LFLAGS	 = -shared

ifndef PREFIX
	PREFIX = /usr/local
endif


all: $(OBJS)
	$(CC) $(OBJS) -o $(OUT) $(LFLAGS)

orthos.o: orthos.cpp
	$(CC) $(FLAGS) orthos.cpp

#ifeq ($(PREFIX),)
#	PREFIX := /usr/local
#endif

install: $(OUT)
	install -d $(PREFIX)/lib/
	install -m 644 $(OUT) $(PREFIX)/lib/
	install -d $(PREFIX)/include/
	install -m 644 $(HEADER) $(PREFIX)/include/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/lib/$(OUT)
	rm -f $(DESTDIR)$(PREFIX)/include/$(HEADER)

clean:
	rm -f $(OBJS) $(OUT)