# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pjeffere <pjeffere@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/05 09:11:21 by pjeffere          #+#    #+#              #
#    Updated: 2021/05/08 21:34:31 by pjeffere         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

HEADER	=	libft.h
NAME	= 	libft.a

SRCS	=	ft_strlen.c \
			ft_memcpy.c \
			ft_memset.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_strlcat.c \
			ft_memcmp.c \
			ft_memmove.c \
			ft_isprint.c \
			ft_isdigit.c \
			ft_strlcpy.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isalnum.c \
			ft_memccpy.c \
			ft_memchr.c \
			ft_bzero.c \
			ft_strrchr.c \
			ft_strdup.c \
			ft_calloc.c \
			ft_putnbr_fd.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_atoi.c \
			ft_itoa.c \
			ft_substr.c \
			ft_strchr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_strmapi.c \
			ft_putendl_fd.c \
			ft_itoa.c \
			ft_strnstr.c \
			ft_strncmp.c \
			ft_split.c \
			
OBJS	= $(SRCS:.c=.o)

GCCFLAG	= -Wall -Wextra -Werror

all		:	$(NAME)
$(NAME)	:	$(OBJS) $(HEADER)
			ar rcs $(NAME) $?

%.o:%.c 
			gcc $(GCCFLAG) -c $< -o $(<:.c=.o)
clean	:
			rm -f $(OBJS)
fclean	:	clean
			rm -f $(NAME)
re		:	fclean all
.PHONY	:	all clean fclean re 