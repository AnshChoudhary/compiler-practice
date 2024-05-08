%{
#include<stdio.h>
int yylex(void);
int yyerror(const char *s);
%}
%token HEADER INT MAIN LB RB LCB RCB SC COMMA VAR
%start prm //Identifies a nonterminal name for the start symbol.

%%
prm: HEADER INT MAIN LB RB LCB BODY RCB {printf("Parsing Successful\n");}
;
BODY: DECL_STMTS
;
DECL_STMTS: DECL_STMT DECL_STMTS
| DECL_STMT
;
DECL_STMT: INT VAR_LIST SC
;
VAR_LIST: VAR COMMA VAR_LIST
| VAR
;
%%

int main()
{
    yyparse();
    return 0;
}

int yyerror(const char *msg)
{
extern int yylineno;
printf("Parsing Failed due to %s in line no %d\n",msg, yylineno);
return 0;
}
