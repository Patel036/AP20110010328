Z
%%
[.*(000).*]  {printf("String Accepted");}
.*     {printf("String Not Accepted");}
%%


int yywrap(void){
    return 1;
}

int main()
{
    yylex();
    
 return 0;   

}