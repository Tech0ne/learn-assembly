##
## ======= Learn Assembly =======
##  This project aims to learn
##  the basics of assembly.
##  Main goals are How it works,
##  and how to write it.
##  Optionaly, I would like to
##  know how it differs between
##  operating systems.
## ==============================
##

SRC 		= project.asm

FLAGS 		= -felf64

OBJ			= project.o

LINKS		= 

NAME		= project

COMPILER	= nasm

LINKER 		= ld

compile:
	@echo "+ Running compilation       +"
	@echo "+ Project description       +"
	@cat description.txt
	@echo "+ ========================= +"
	$(COMPILER) $(FLAGS) $(SRC) -o $(OBJ)
	$(LINKER) $(LINKS) $(OBJ) -o $(NAME)
	@echo "+ Compilation success       +"

clean:
	@echo "+ Cleaning project          +"
	rm -f $(OBJ)
	@echo "+ Project clean             +"

fclean:	clean
	@echo "+ Clearing project          +"
	rm -f $(NAME)
	@echo "+ Project clear             +"