out : main.o func.o
	g++ main.o func.o -o out

main.o : main.cpp
	g++ -c main.cpp -o main.o

calc.o: func.cpp
	g++ -c func.cpp -o func.o

clean : 
	rm *.o
distclean:
	rm out *.o