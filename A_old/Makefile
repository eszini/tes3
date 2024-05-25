
# Variables
PROJECT   = tes3
SRC_DIR   = ~/wrk/tes3
BUILD_DIR = .
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
$(BUILD_DIR)/%.o:	$(SRC_DIR)/%.c
			$(CC) $(CFLAGS) -c -o $@ $<

# para link de objetos a exe
$(BUILD_DIR)/%: 	$(BUILD_DIR)/%.o
			$(CC) $(CFLAGS) -o $@ $^

clean:
	@echo "Cleaning up..."
	@rm -f tes01.o tes01.exe 
	@echo "Clean completed."





#	# Definición de variables
#	CC = gcc
#	CFLAGS = -Wall -O2
#	SRC_DIR = ../src
#	BUILD_DIR = .
#	BIN_DIR = ~/bin
#	
#	# Lista de ejecutables
#	EXECUTABLES = tes01 prueba1
#	
#	# Tareas
#	.PHONY: all clean copybin
#	
#	all: $(EXECUTABLES)
#	
#	# Regla genérica para compilar .c a .o
#	$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
#		$(CC) $(CFLAGS) -c -o $@ $<
#	
#	# Regla genérica para enlazar archivos objeto en ejecutables
#	$(BUILD_DIR)/%: $(BUILD_DIR)/%.o
#		$(CC) $(CFLAGS) -o $@ $^
#	
#	# Reglas específicas para cada ejecutable
#	tes01: $(BUILD_DIR)/tes01
#	prueba1: $(BUILD_DIR)/prueba1
#	
#	clean:
#		@echo "Cleaning up..."
#		@rm -f $(BUILD_DIR)/*.o $(BUILD_DIR)/tes01 $(BUILD_DIR)/prueba1
#		@echo "Clean completed."
#	
#	copybin:
#		@for exec in $(EXECUTABLES); do \
#			if [ -e $(BUILD_DIR)/$$exec ]; then \
#				cp $(BUILD_DIR)/$$exec $(BIN_DIR); \
#				echo "Executable $$exec copied to $(BIN_DIR)"; \
#			else \
#				echo "Executable $$exec not found."; \
#			fi \
#		done
#	
