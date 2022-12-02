id     [a-zA-Z][a-zA-Z0-9]*
ops     "="|"<"|">"|"<>"|"+"|"-"|"/"|"*"
separator    ":"|","|";"|"{"|"}"|"("|")"
keywords "int"|"endif"|"if"|"else"|"then"
%{
%}

%%
[ \t\n]+ {fprintf(yyout, "");}
.       { fprintf(yyout, "%s", yytext); }
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {fprintf(yyout, "");}
{ops} {fprintf(yyout,"%s%s%s","\n",yytext,": is an operator\n");}
{keywords} {fprintf(yyout,"%s%s%s","\n",yytext,": is a keyword\n");}
{id} {fprintf(yyout,"%s%s%s","\n",yytext,": is an identifier\n");}

[0-9]+ {fprintf(yyout,"%s%s%s","\n",yytext,": is an integer\n");}
%%
int yywrap(void){}
int main() {
  extern FILE *yyin, *yyout;
  yyin = fopen("input.txt","r");
  yyout = fopen("output.txt","w");
  yylex();
}