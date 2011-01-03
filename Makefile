SOURCES = analysis.cpp capture.cpp main.cpp presentation.cpp
HEADERS = include/analysis.hpp include/capture.hpp include/presentation.hpp
TARGET  = iwb

CC     = g++
DEBUG  = -g
CFLAGS = -Wall -Wextra $(DEBUG) $(shell pkg-config --cflags opencv)

LIBS      =
LIBCONFIG = $(shell pkg-config --libs opencv)
LFLAGS    = $(LIBS) $(LIBCONFIG)

all :
	$(CC) $(LFLAGS) $(CFLAGS) $(SOURCES) $(HEADERS) -o $(TARGET)

clean:
	\rm $(TARGET)
