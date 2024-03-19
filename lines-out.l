%{
#include <stdio.h>
#include <stdlib.h>
int line_number = 1;
FILE *output_file; // File pointer for the output file
%}

line .*\n

%%
{line} { fprintf(output_file, "%d %s", line_number++, yytext); } // Write to output file
%%

int main() {
    yyin = fopen("input.c", "r");
    output_file = fopen("output.txt", "w"); // Open output file for writing
    if (output_file == NULL) {
        fprintf(stderr, "Error: Unable to open output file.\n");
        return 1;
    }
    yylex();
    fclose(output_file); // Close output file
    fclose(yyin); // Close input file
    return 0;
}

