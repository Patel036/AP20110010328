ines (11 sloc)  126 Bytes

%{
#include "y.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext);
return NUMBER;
}
[\t] ;
\n return 0;
. return yytext[0];
%%

int yywrap(){
    return 0;
}