CFLAGS = -c -Wall
CC = gcc
LIBS =  -lm 
STD= -std=c99

all: scanner

scanner: scanner.o reader.o charcode.o token.o error.o
	${CC} scanner.o reader.o charcode.o token.o error.o -o scanner ${STD}

reader.o: reader.c
	${CC} ${CFLAGS} reader.c ${STD}

scanner.o: scanner.c
	${CC} ${CFLAGS} scanner.c ${STD}

charcode.o: charcode.c
	${CC} ${CFLAGS} charcode.c ${STD}

token.o: token.c
	${CC} ${CFLAGS} token.c ${STD}

error.o: error.c
	${CC} ${CFLAGS} error.c ${STD}

clean:
	rm -f *.o *~

