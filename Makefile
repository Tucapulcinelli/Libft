# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: telias-p <telias-p@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/14 13:57:25 by telias-p          #+#    #+#              #
#    Updated: 2021/02/17 23:20:12 by telias-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS		= -Wall -Wextra -Werror
COMP		= gcc
NAME		= libft.a
INCLUDE		= libft.h
FLAGLIB1	= ar -rcs
FLAGLIB2	= ranlib
RM			= /bin/rm -f

FUNC		= ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
			ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c\
			ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\

FUNC_B		= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c\
			ft_lstmap.c

OBJ			= $(FUNC:.c=.o)

OBJ_B		= $(FUNC_B:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJ) $(INCLUDE)
			$(FLAGLIB1) $(NAME) $(OBJ)
			$(FLAGLIB2) $(NAME)

bonus:		$(NAME) $(OBJ_B)
			$(FLAGLIB1) $(NAME) $(OBJ_B)
			$(FLAGLIB2) $(NAME)

.c.o:
			$(COMP) $(FLAGS) -I $(INCLUDE) -c $< -o $(<:.c=.o)

clean:
			$(RM) $(OBJ) $(OBJ_B)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

rebonus:	fclean bonus

.PHONY:		all bonus re clean fclean rebonus
