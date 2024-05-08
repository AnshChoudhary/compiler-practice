%option yylineno
%{
#include<stdio.h>
#include"y.tab.h"
#include<stdlib.h>
%}

%%
"#include<stdio.h>" {return HEADER;}
"int" {return INT;}
"float" {return FLOAT;}
"double" {return DOUBLE;}
"char" {return CHAR;}
"if" {printf("Usage of keyword if  as var name is prohibited \n"), exit(0);}
"while" {printf("Usage of keyword while  as var name is prohibited \n"), exit(0);}
"do" {printf("Usage of keyword do as var name is prohibited \n"), exit(0);}
"for" {printf("Usage of keyword for as var name is prohibited \n"), exit(0);}
"main"	{return MAIN;}
"(" {return LB;}
")" {return RB;}
"{" {return LCB;}
"}" {return RCB;}
"," {return COMMA;}
";" {return SC;}
[\+\-\*\/] {return OP;}
"="	{return EQ;}
[a-z][a-zA-Z0-9]+  {return VAR;}
[\n\t ]+  {/*new line or space*/}
. {printf("unexpected character sequence %s in line no %d\n",yytext, yylineno); exit(0);}
%%


int yywrap(void)
{
    return 1;
}
