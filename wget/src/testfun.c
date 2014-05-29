#include<stdio.h>
#include <stringprep.h>
#include <idna.h>

int main()
{
	char * new;
	
	idna_to_unicode_8zlz("www.google.com", &new, 2);
                                 


	printf("%s\n",new);
}

