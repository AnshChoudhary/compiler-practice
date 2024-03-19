%{  
#include <stdio.h>  
%}  
%%


[ \t]+ /* Ignore whitespace */


"+" { printf("PLUS\n"); }
"-" { printf("MINUS\n"); }
"*" { printf("MUL\n"); }
"/" { printf("DIV\n"); }
"|" { printf("ABS\n"); }
[0-9]+ { printf("NUMBER\n"); }
\n { printf("NEW LINE\n"); }
. { printf("MYSTERY CHAR\n"); }


%%


int yywrap() {
return 1;
}


int main() {
yylex();
return 0;
}
