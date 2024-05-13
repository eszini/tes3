
all:		tes01 prueba1

clean:
		rm *.exe
tes01:		tes01.c
		gcc -o tes01  tes01.c

prueba1:	prueba1.c
		gcc -o prueba1  prueba1.c


