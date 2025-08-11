/* Just like Unix wc */

/* Primera sección: declaraciones */
%{
#include <stdio.h>
#include <string.h>
#include <time.h>

int chars = 0;
int words = 0;
int lines = 0;
%}

%%
[^ \t\n\r\f\v]+    { words++; chars += strlen(yytext); }  /* palabra */
\n                 { chars++; lines++; }                  /* salto */
.                  { chars++; }                           /* otro carácter */
%%

/* Tercera sección: funciones en C */
int main(int argc, char **argv)
{
    clock_t start_time = clock();
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
    clock_t end_time = clock();
    double time_taken = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Tiempo transcurrido: %f segundos\n", time_taken);
    return 0;
}
