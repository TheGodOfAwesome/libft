# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/10 10:32:31 by kmuvezwa          #+#    #+#              #
#    Updated: 2017/08/07 14:35:56 by kmuvezwa         ###   ########.fr        #
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
		 ft_putchar.c\
		 ft_putnbr.c\
		 ft_putstr.c\
		 ft_putendl.c\
		 ft_putchar_fd.c\
		 ft_putstr_fd.c\
		 ft_putendl_fd.c\
		 ft_putnbr_fd.c\
		 ft_strclr.c\
		 ft_striter.c\
		 ft_striteri.c\
		 ft_memalloc.c\
		 ft_memdel.c\
		 ft_strnew.c\
		 ft_strtrim.c\
		 ft_strsub.c\
		 ft_strjoin.c\
		 ft_itoa.c\
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
	  ft_putchar.o\
	  ft_putnbr.o\
	  ft_putstr.o\
	  ft_putendl.o\
	  ft_putchar_fd.o\
	  ft_putstr_fd.o\
	  ft_putendl_fd.o\
	  ft_putnbr_fd.o\
	  ft_strclr.o\
	  ft_striter.o\
	  ft_striteri.o\
	  ft_memalloc.o\
	  ft_memdel.o\
	  ft_strnew.o\
	  ft_strtrim.o\
	  ft_strsub.o\
	  ft_strjoin.o\
	  ft_itoa.o\
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
