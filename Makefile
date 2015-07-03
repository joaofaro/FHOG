CC = g++

# Optimisation level
OPT     = -O3

## final compilation flags
CFLAGS	= $(OPT) -Wall

# OpenCV libraries
PKG_CONFIG_CFLAGS=`pkg-config --cflags opencv`

# OpenCV libraries
PKG_CONFIG_LIB=`pkg-config --libs opencv`

# EXECcutable
EXEC = ./bin/FHOG

# Main
MAIN = main

# Objects to be linked with main
OBJS = FHOG.o

$(EXEC) : $(MAIN).cpp ${OBJS}
	$(CC) $(CFLAGS) $(PKG_CONFIG_CFLAGS) $(MAIN).cpp ${OBJS} -o $(EXEC) $(PKG_CONFIG_LIB) $(LIB)

FHOG.o: FHOG.cpp FHOG.hpp	
	$(CC) $(CFLAGS) -c FHOG.cpp $(PKG_CONFIG_CFLAGS)

clean: 
	rm -f ${OBJS} ${EXEC}
