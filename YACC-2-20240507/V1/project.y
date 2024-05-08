%{
	#include<stdio.h>
	int yylex(void);
	int yyerror(const char *s);
%}
%token HEADER INT MAIN LB RB LCB RCB 
%start prm //Identifies a nonterminal name for the start symbol.

%%
prm: HEADER INT MAIN LB RB LCB RCB {printf("Parsing Successful\n");}
%%

int main()
{
    yyparse();
    return 0;
}

int yyerror(const char *msg)
{
extern int yylineno;
printf("Parsing Failed due to %s\n",msg);
	return 0;
}

