%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

\/\/(.*) { }
\/\*(.*\n)*.*\*\/ { }
%%

int main()
{
yyin = fopen("input.c", "r");
yyout = fopen("output.c", "w");
yylex();

return 0;
}

