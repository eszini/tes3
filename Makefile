
# Variables
PROJECT   = tes3
SRC_DIR   = ~/wrk/tes3
BLD_DIR   = .
BIN_DIR   = .
EXEC      = tes01 prueba1


# Comandos
CC      = gcc
#CFLAGS = -Wall -O2
CFLAGS  = 


# Tareas
.PHONY: all clean 


all: 		$(EXEC)

# para compilar .c a .o
$(BLD_DIR)/%.o:	$(SRC_DIR)/%.c
		$(CC) $(CFLAGS) -c -o $@ $<

# para link de objetos a exe
$(BLD_DIR)/%: 	$(BLD_DIR)/%.o
		$(CC) $(CFLAGS) -o $@ $^

clean:
	@echo "Borrando files temporarios ... "
	@rm -f *.o *.exe 
	@echo "Listo ..."

