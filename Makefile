##
## EPITECH PROJECT, 2023
## Stumper_solo
## File description:
## Makefile
##

CFLAGS	=	-I./include

SRC	=	main.c\

OBJ	=	$(SRC:.c=.o)

NAME	=	te

all:    $(NAME)

$(NAME):    $(OBJ)
	$(CC) $(SRC) $(CFLAGS) -o $(NAME)

clean:
	rm -f $(OBJ) *.gcda *.gcno

fclean: clean
	rm -f $(NAME)
	rm -f unit_tests

tests_run:
	gcc -o unit_tests main.c tests/test_solo_stumper.c --coverage -lcriterion
	./unit_tests
re: fclean $(NAME)

.PHONY: sub clean fclean re