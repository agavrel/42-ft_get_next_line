# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: angavrel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/23 19:19:12 by angavrel          #+#    #+#              #
#    Updated: 2016/12/06 17:26:26 by angavrel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line

CC = gcc

CFLAGS = -Wall -Werror -Wextra

LDFLAGS = -Llibft

LDLIBS = -lft

CPPFLAGS = -I.

SRC_NAME = main.c \
		   $(NAME).c

OBJ_NAME = $(SRC_NAME:.c=.o)

HEAD = $(NAME).h

all: $(NAME)

$(NAME): $(OBJ_NAME)
	@make -C ./libft
	@$(CC) $(CFLAGS) $(LDFLAGS) $(LDLIBS) -I ./ $^ -o $@
	@echo "\033[0;32mget_next_line's program created.\033[0m"

$(OBJ)%.o: $(SRC)%.c
	@$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

clean:
	@rm -f $(OBJ_NAME)
	@rm -f $(OBJ)
	@echo "\033[0;32mget_next_line's .o files deleted.\033[0m"

fclean: clean
	@rm -f $(NAME)
	@make -C ./Libft fclean
	@echo "\033[0;32mget_next_line Project fully cleaned.\033[0m"

re: fclean all

.PHONY: all clean fclean re
