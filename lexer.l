%{
/* Seccion de definiciones */
  #include<stdio.h>
  #include "parser.tab.h"
  extern int yylval;
%}
/* Seccion de reglas  */
%%
[0-9]+ {
          yylval = atoi(yytext); // asignar el valor semantico
          return NUMBER;
       }
("(") return '(';
(")") return ')';
[\t] ;
[\n] return 0;
(" ") {}
. return yytext[0];
  
%%
  
int yywrap()
{
 return 1;
}
