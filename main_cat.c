#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include "libftasm.h"

int main (int ac, char ** av)
{
	int fd = 0;

	if (ac == 1 || ac == 2) {
		if (ac == 2) {
			fd = open(av[1], O_RDONLY);
		}
		ft_cat(fd);
		if (fd != -1) {
			close(fd);
		}
	} else {
		printf("Usage: ./ft_cat [filename]\n");
	}
	return (0);
}
