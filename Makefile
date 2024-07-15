## personnal project
##
## Makefile
##
## c ray tracer

SRC = $(wildcard source/*.c)

OBJ = $(SRC:.c=.o)

NAME = ray_tracer

CFLAGS = -I./include/ -g -Wall -Wextra

all: $(NAME)

$(NAME):	$(OBJ)
			gcc -o $(NAME) $(OBJ) $(CFLAGS) $(LDFLAGS)

clean:
		$(RM) *~
		$(RM) $(OBJ)

fclean: clean
		$(RM) $(NAME)

re:		fclean all

.Phony: all clean fclean re