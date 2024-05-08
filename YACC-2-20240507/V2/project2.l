%option yylineno
%{
#include<stdio.h>
#include"y.tab.h"
#include<math.h>
%}

%%
"#include<stdio.h>" {return HEADER;}
"int"	{return INT;}
"main"	{return MAIN;}
"(" {return LB;}
")" {return RB;}
"{" {return LCB;}
"}" {return RCB;}
"," {return COMMA;}
";" {return SC;}
[a-z]+  {return VAR;}
[\n\t ]+  {/*new line or space*/}
. {printf("unexpected character sequence %s in line no %d\n",yytext, yylineno); exit(0);}
%%


int yywrap(void)
{
    return 1;
}
