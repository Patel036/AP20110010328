%{
#include<stdio.h>
#include<string.h>
int i = 0;
%}
  
/* Rules Section*/
%%
[a-zA-Z]([a-zA-Z0-9])*    {printf("is a identifier");}
.*                        {printf("not a identifier");}

%%

int yywrap(void){}
  
int main()
{   
    yylex();
  
    return 0;
}