# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: telias-p <telias-p@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/14 13:57:25 by telias-p          #+#    #+#              #
#    Updated: 2021/03/12 19:29:39 by telias-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS		= -Wall -Wextra -Werror
COMP		= gcc
NAME		= libft.a
INCLUDE		= libft.h
FLAGLIB1	= ar -rcs
FLAGLIB2	= ranlib
RM			= /bin/rm -f

FUNC		= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
			ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memccpy.c \
			ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c\
			ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
			ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c \
			ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c\
			ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

FUNC_B		= ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c\
			ft_lstiter.c ft_lstlast.c ft_lstmap.c  ft_lstnew.c ft_lstsize.c

FUNC_E		= ft_putnbr.c ft_putstr.c ft_str_is_alpha.c ft_str_is_lowercase.c\
			ft_str_is_numeric.c ft_str_is_printable.c ft_str_is_uppercase.c\
			ft_strcat.c ft_strclen.c ft_strcmp.c ft_strcpy.c ft_strdel.c\
			ft_strjoin_free.c ft_strncat.c ft_strncpy.c ft_strstr.c

OBJ			= $(FUNC:.c=.o)

OBJ_B		= $(FUNC_B:.c=.o)

OBJ_E		= $(FUNC_E:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJ) $(INCLUDE)
			$(FLAGLIB1) $(NAME) $(OBJ)
			$(FLAGLIB2) $(NAME)

bonus:		$(NAME) $(OBJ_B)
			$(FLAGLIB1) $(NAME) $(OBJ_B)
			$(FLAGLIB2) $(NAME)

extra:		$(NAME) $(OBJ_E)
			$(FLAGLIB1) $(NAME) $(OBJ_E)
			$(FLAGLIB2) $(NAME)

.c.o:
			$(COMP) $(FLAGS) -I $(INCLUDE) -c $< -o $(<:.c=.o)

clean:
			$(RM) $(OBJ) $(OBJ_B) $(OBJ_E)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

rebonus:	fclean bonus extra

.PHONY:		all bonus extra re clean fclean rebonus reextra
