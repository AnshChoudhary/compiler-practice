%{
#include <stdio.h>
#include <stdlib.h>
FILE *output_file;
%}

line .*\n

%%
{line} { fprintf(output_file, "%d %s", line_number++, yytext)};
%%

int main() {
    yyin = fopen("input.c", "r");
    output_file = fopen()
}