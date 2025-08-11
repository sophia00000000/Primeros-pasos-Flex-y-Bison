/* Companion source code for "flex & bison", published by O'Reilly
 * Media, ISBN 978-0-596-15597-1
 * Copyright (c) 2009, Taughannock Networks. All rights reserved.
 * See the README file for license conditions and contact info.
 * $Header: /home/johnl/flnb/code/RCS/fb1-5.y,v 2.1 2009/11/08 02:53:18 johnl Exp $
 */

/* simplest version of calculator */

%{
#  include <stdio.h>
%}

/* declare tokens */
%token NUMBER
%token ADD SUB MUL DIV
%token OP CP
%token BAR
%token EOL

%left ADD SUB
%left BAR      /* OR binario */
%left MUL DIV
%right UMINUS

%%

calclist: /* nothing */
 | calclist exp EOL { printf("= %d (0x%X)\n> ", $2, $2); }
 | calclist EOL { printf("> "); } /* blank line or a comment */
 ;

exp: factor
 | exp ADD exp { $$ = $1 + $3; }
 | exp SUB factor { $$ = $1 - $3; }
 | exp BAR exp  { $$ = $1 | $3; } /* OR binario */
 ;

factor: term
 | factor MUL term { $$ = $1 * $3; }
 | factor DIV term { $$ = $1 / $3; }
 ;

term: NUMBER
 | BAR exp BAR  { $$ = ($2 < 0) ? -$2 : $2; } /* valor absoluto */
 | SUB term %prec UMINUS { $$ = -$2; }        /* unario menos */
 | OP exp CP    { $$ = $2; }
 ;
%%
main()
{
  printf("> "); 
  yyparse();
}

yyerror(char *s)
{
  fprintf(stderr, "error: %s\n", s);
}