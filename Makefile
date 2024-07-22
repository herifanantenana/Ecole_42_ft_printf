# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arakotom <arakotom@student.42antananari    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/10 17:55:45 by arakotom          #+#    #+#              #
#    Updated: 2024/07/23 01:35:01 by arakotom         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror

SRC_DIR = srcs
OBJ_DIR = objs

UTIL_DIR = $(SRC_DIR)/utils
UTIL_OBJ_DIR = $(OBJ_DIR)/utils

SRCS = $(wildcard $(SRC_DIR)/*.c) \
	$(wildcard $(UTIL_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

RM = rm -rf

NAME = libftprintf.a

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $@ $(OBJS)

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c | $(OBJ_DIR)
	cc $(CFLAGS) -c $< -o $@

$(UTIL_OBJ_DIR)/%.o : $(UTIL_DIR)/%.c | $(UTIL_OBJ_DIR)
	cc $(CFLAGS) -c $< -o $@

$(OBJ_DIR) $(UTIL_OBJ_DIR):
	mkdir -p $@

clean :
	$(RM) $(OBJ_DIR)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY: all clean fclean re