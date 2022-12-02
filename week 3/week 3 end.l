%{
#include<stdio.h>
#include<string.h>
int v[10] = {0};
int i=0;
%}

%%
([00 ])*   {v[i++];}
([^}]) ;
([}]) {return *v;}  

%%

int yywrap(void){}

 
int main()
{
    
    yylex();
    printf("00\n%d",v);
    //yylex();

    
     
}