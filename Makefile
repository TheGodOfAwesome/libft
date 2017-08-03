# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/10 10:32:31 by kmuvezwa          #+#    #+#              #
#    Updated: 2017/06/19 23:39:05 by kmuvezwa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

GCC = gcc -c -Wall -Wextra -Werror

CFILES = ft_memset.c\
		 ft_bzero.c\
		 ft_memcpy.c\
		 ft_memccpy.c\
		 ft_memmove.c\
		 ft_memchr.c\
		 ft_memcmp.c\
		 ft_strlen.c\
		 ft_strdup.c\
		 ft_strcpy.c\
		 ft_strncpy.c\
		 ft_strncat.c\
		 ft_strcat.c\
		 ft_strlcat.c\
		 ft_strchr.c\
		 ft_strrchr.c\
		 ft_strstr.c\
		 ft_strnstr.c\
		 ft_strcmp.c\
		 ft_strncmp.c\
		 ft_isalpha.c\
		 ft_isdigit.c\
		 ft_isalnum.c\
		 ft_isascii.c\
		 ft_isprint.c\
		 ft_toupper.c\
		 ft_tolower.c\
		 ft_atoi.c

OBJS = ft_memset.o\
	  ft_bzero.o\
	  ft_memcpy.o\
	  ft_memccpy.o\
	  ft_memchr.o\
	  ft_memcmp.o\
	  ft_memmove.o\
	  ft_strlen.o\
	  ft_strdup.o\
	  ft_strcpy.o\
	  ft_strncpy.o\
	  ft_strncat.o\
	  ft_strcat.o\
	  ft_strlcat.o\
	  ft_strchr.o\
	  ft_strrchr.o\
	  ft_strstr.o\
	  ft_strnstr.o\
	  ft_strcmp.o\
	  ft_strncmp.o\
	  ft_isalpha.o\
	  ft_isdigit.o\
	  ft_isalnum.o\
	  ft_isascii.o\
	  ft_isprint.o\
	  ft_toupper.o\
	  ft_tolower.o\
	  ft_atoi.o

all : $(NAME)

$(NAME) :
	$(GCC) $(CFILES)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
