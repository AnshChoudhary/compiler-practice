%{
#include <stdio.h>
#include <stdlib.h>
int line_number = 1;
%}

line .*\n

%%
{line} { printf("%d %s", line_number++, yytext); } 
%%

int main() {
yyin = fopen("input.c", "r");
yylex();
return 0;
}
