LIBFT = ./libft/libft.a

NAME = libftprintf.a

SRCS =	src/ft_printf.c \
		src/ft_printchar.c \
		src/ft_printstr.c \
		src/ft_printnbr.c \
		src/ft_printunsigned.c \
		src/ft_printhex.c \
		src/ft_printptr.c \
		
SURPL_O =	ft_printf.o \
			ft_printchar.o \
			ft_printstr.o \
			ft_printnbr.o \
			ft_printunsigned.o \
			ft_printhex.o \
			ft_printptr.o \

CC = gcc

FLAGS = -Wall -Wextra -Werror

INCLUDES = -I./include

OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	make -C libft
	cp libft/libft.a $(NAME)
	cd ./src $(CC) $(FLAGS) $(INCLUDES) $(SRCS)
	ar rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
	$(MAKE) clean -C ./libft
	rm -rf $(SURPL_O) 
	rm -rf $(OBJS)

fclean : clean
	$(MAKE) fclean -C ./libft
	rm -rf $(NAME)

re : fclean all

.PHONY:	all clean fclean re
