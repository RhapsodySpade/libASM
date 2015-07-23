#include <stdio.h>
#include "libftasm.h"
#include <ctype.h>

void test_ascii()
{
	printf("----- isAscii -----\n");
	
	printf("A %d\n", ft_isascii('A'));
	printf("Z %d\n", ft_isascii('Z'));
	printf("B %d\n", ft_isascii('B'));
	printf("a %d\n", ft_isascii('a'));
	printf("z %d\n", ft_isascii('z'));
	printf("0 %d\n", ft_isascii('0'));
	printf("9 %d\n", ft_isascii('9'));
	printf("4 %d\n", ft_isascii('4'));
	printf(". %d\n", ft_isascii('.'));
	printf("` %d\n", ft_isascii('`'));

	printf("------------------\n\n");
}

void test_digit()
{
	printf("----- isDigit -----\n");
	
	printf("1 %d\n", ft_isdigit('1'));
	printf("Z %d\n", ft_isdigit('Z'));
	printf("8 %d\n", ft_isdigit('8'));
	printf("a %d\n", ft_isdigit('a'));
	printf("4 %d\n", ft_isdigit('4'));
	printf(". %d\n", ft_isdigit('.'));
	printf("` %d\n", ft_isdigit('`'));

	printf("------------------\n\n");
}

void test_alpha()
{
	printf("----- isAlpha -----\n");
	
	printf("1 %d\n", ft_isalpha('1'));
	printf("Z %d\n", ft_isalpha('Z'));
	printf("8 %d\n", ft_isalpha('8'));
	printf("a %d\n", ft_isalpha('a'));
	printf("4 %d\n", ft_isalpha('4'));
	printf(". %d\n", ft_isalpha('.'));
	printf("d %d\n", ft_isalpha('d'));

	printf("------------------\n\n");
}

void test_alnum()
{
	printf("----- isAlnum -----\n");
	
	printf("1 %d\n", ft_isalnum('1'));
	printf("Z %d\n", ft_isalnum('Z'));
	printf("8 %d\n", ft_isalnum('8'));
	printf("a %d\n", ft_isalnum('a'));
	printf("4 %d\n", ft_isalnum('4'));
	printf(". %d\n", ft_isalnum('.'));
	printf(", %d\n", ft_isalnum(','));

	printf("------------------\n\n");
}

void test_print()
{
	printf("----- isPrint -----\n");
	
	printf("1 %d\n", ft_isprint('1'));
	printf("Z %d\n", ft_isprint('Z'));
	printf("8 %d\n", ft_isprint('8'));
	printf("a %d\n", ft_isprint('a'));
	printf("space %d\n", ft_isprint(' '));
	printf(". %d\n", ft_isprint('.'));
	printf(", %d\n", ft_isprint(','));

	printf("------------------\n\n");
}

void test_tolower()
{
	printf("----- toLower -----\n");
	
	printf("1 %d\n", ft_tolower('1'));
	printf("Z %d\n", ft_tolower('Z'));
	printf("a %d\n", ft_tolower('a'));
	printf("f %d\n", ft_tolower('f'));
	printf("G %d\n", ft_tolower('G'));

	printf("------------------\n\n");
}

void test_strlen()
{
	printf("----- strlen -----\n");
	
	printf("nb of letters in 'yolo': %zu\n", ft_strlen("yolo"));

	printf("------------------\n\n");
}


void test_toupper()
{
	printf("----- toUpper -----\n");
	
	printf("1 %d\n", ft_toupper('1'));
	printf("Z %d\n", ft_toupper('Z'));
	printf("a %d\n", ft_toupper('a'));
	printf("f %d\n", ft_toupper('f'));
	printf("G %d\n", ft_toupper('G'));

	printf("------------------\n\n");
}

void test_bzero (void)

{	printf("----- bzero -----\n");

	char str[7] = "HelloW\0";

	printf("str before bzero call: %s\n", str);
	ft_bzero(&str, 7);
	printf("str after  bzero call: %s\n", str);

	printf("------------------\n\n");
}

void test_memset (void)

{	printf("----- memset -----\n");

	char a[7] = "HelloW\0";

	printf("str: [%s]\n", a);
	ft_memset(a, 'A', 2);
	printf("str after memset call: [%s]\n", a);

	printf("------------------\n\n");
}

void test_memcpy (void)

{	printf("----- memcpy -----\n");

	char one[6] = "Hello\0";
	char two[6] = "CHATS\0";

	printf("one :%s\n", one);
	printf("two :%s\n", two);
	char * res = ft_memcpy(one, two, 2);
	printf("one after memcpy: [%s] (%p)\n", one, one);
	printf("two after memcpy: [%s] (%p)\n", two, two);
	printf("ret after memcpy: [%s] (%p)\n", res, res);

	printf("------------------\n\n");
}

void test_strdup (void)

{	printf("----- strdup -----\n");

	char str[5] = "Test\0";
	printf("str [%s] ptr [%p]\n", str, str);

	char * cpy = ft_strdup(str);
	printf("cpy [%s] ptr [%p]\n", cpy, cpy);

	printf("------------------\n\n");
}


void test_puts (void)

{	printf("----- puts -----\n");

	int ret = ft_puts("R U RDY 4 THIS ?");
	printf("ret : %d\n", ret);
	ft_puts("8976\n");
	ft_puts("lookmom!nonewline!");

	ft_puts("uh\n");
	printf("------------------\n\n");
}

void test_strcat (void)

{	printf("----- strcat  -----\n");

	char one[5] = "This\0";
	char two[12] = " with this.\0";

	printf("str1: [%s]\n", one);
	printf("str2: [%s]\n", two);
	printf("ft_strcat(str1, str2): [%s]\n", ft_strcat(one, two));
	printf("------------------\n\n");
}

void test_putchar()
{
	printf("----- putchar -----\n");

  ft_putchar('s');
  ft_putchar('\n');
  ft_putchar('y');
  ft_putchar('\n');
  ft_putchar('o');
  ft_putchar('\n');
  ft_putchar('l');
  ft_putchar('\n');
  ft_putchar('o');
  ft_putchar('\n');

	printf("------------------\n\n");
}


void test_strchr (void)

{	printf("----- strchr  -----\n");

	char one[5] = "This\0";
	int c = 'h';

	printf("str1: [%s]\n", one);
	printf("char: [h]\n");
	printf("ft_strchr(str1, char): [%s]\n", ft_strchr(one, c));
	printf("------------------\n\n");
}


void test_isspace()
{
	printf("----- isSpace -----\n");
	
	printf("1 %d\n", ft_isalpha('1'));
	printf("Z %d\n", ft_isalpha('Z'));
	printf("8 %d\n", ft_isalpha('8'));
	printf("  %d\n", ft_isalpha(' '));
	printf("4 %d\n", ft_isalpha('4'));
	printf(". %d\n", ft_isalpha('.'));
	printf("d %d\n", ft_isalpha('d'));

	printf("------------------\n\n");
}

void test_putsfd()
{
	printf("----- putsfd -----\n");
	
	ft_putsfd("LOLO |", 2);
	ft_putsfd("91005\n", 2);
	ft_putsfd("withoutbackslashn", 2);
	ft_putsfd("ss\n", 2);

	printf("------------------\n\n");
}

void test_strclr(void)

{	printf("----- strclr -----\n");

	char one[6] = "Hello\0";

	printf("one :[%s]\n", one);
	ft_strclr(one);
	printf("one after strclr: [%s] )\n", one);

	printf("------------------\n\n");
}



int main (void)
{

	/* Basics */
	test_ascii();
	test_digit();
	test_alpha();
	test_alnum();
	test_print();
	test_tolower();
	test_toupper();
	test_bzero();
	test_strcat();


	/*Part 2*/
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
	test_puts();


	/*Bonus*/
	test_strchr();
	test_isspace();
	test_putsfd();
	test_putchar();
	test_strclr();
	return 0;
}
