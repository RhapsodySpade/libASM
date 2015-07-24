LIBFT = libfts.a
NASM = nasm
NASM_FLAGS = -f macho64
NASM_FILES = ft_isascii.s \
			 ft_isdigit.s \
			 ft_isalpha.s \
			 ft_isalnum.s \
			 ft_isprint.s \
			 ft_tolower.s \
			 ft_toupper.s \
			 ft_strlen.s \
			 ft_bzero.s \
			 ft_memset.s \
			 ft_memcpy.s \
			 ft_strdup.s \
			 ft_puts.s \
			 ft_cat.s \
			 ft_strcat.s \
			 ft_strchr.s \
			 ft_isspace.s \
			 ft_putsfd.s	\
			 ft_putchar.s \
			 ft_strclr.s

DIR_SRC = srcs/libfts
DIR_OBJ = .obj

NASM_SRC = $(addprefix $(DIR_SRC)/, $(NASM_FILES))
NASM_OBJ = $(NASM_FILES:%.s=$(DIR_OBJ)/%.o)

$(DIR_OBJ)/%.o: $(DIR_SRC)/%.s
	@mkdir -p $(DIR_OBJ)
	$(NASM) $(NASM_FLAGS) $< -o $@

all: $(LIBFT)

$(LIBFT): $(NASM_OBJ)
	ar rcs $@ $^

clean:
	rm -rf $(DIR_OBJ)

fclean: clean
	rm -rf $(LIBFT)

re: fclean $(LIBFT)

#-----------------------------------#

TEST = test

FLAGS = -Wall -Wextra -Werror
LIB_FLAGS = -L. -lfts

$(TEST): $(LIBFT) $(NASM_OBJ) main2.c
	gcc $(FLAGS) main2.c $(LIB_FLAGS) -o $(TEST) -I inc

#-----------------------------------#

CAT = cat

FLAGS     = -Wall -Werror -Wextra
LIB_FLAGS = -L. -lfts

$(CAT): $(NASM_OBJ) main.c
	gcc $(FLAGS) main_cat.c $(LIB_FLAGS) -o $(CAT) -I inc

.PHONY: all clean fclean re
