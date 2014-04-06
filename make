reciprocal : main.o reciprocal.o
	   g++ $(CFLAGS) -o reciprocal main.o reciprocal.o

main.o: main.c reciprocal.hpp
	g++ ($CFLAGS) -c main.c

reciprocal.o: reciprocal.cpp reciprocal.hpp
	      g++ $(CFLAGS) -c reciprocal.cpp

clean:
	rm -f *.o reciprocal