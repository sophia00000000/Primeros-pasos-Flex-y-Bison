# Primeros-pasos-Flex-y-Bison

## 1. Manejo de comentarios:

Pregunta: ¿La calculadora aceptará una línea que contenga solo un comentario? ¿Por qué o no? ¿Sería más fácil corregir esto en el escáner o analizador?
    Si puede aceptar comentarios pero lo ignora por completo y solo detecta "\n", que devuelve como EOL, al enviar un archivo con solo un comentario produce la salida esperada que es ">"
    
<img width="814" height="208" alt="imagen" src="https://github.com/user-attachments/assets/dc439a25-fc5b-4ecc-b092-34c044d45df4" />
    
Si se quiere manejar o procesar los comentarios sería mas fácil modificar el scanner e crear una regla para COMMENT
    
## 2. Conversión hexadecimal:

Pregunta: Convierta la calculadora en una calculadora hexadecimal que acepte números hexadecimales y decimales.

Instrucciones:
- Agregue un patrón como 0x[a-f0-9]+ en el escáner para identificar números hexadecimales.
- Use strtol en el código de acción para convertir la cadena en un número y almacenarlo en yylval.
- Asegúrese de que la calculadora devuelva un token NUMBER.
- Ajuste la salida printf para mostrar los resultados en formatos decimales y hexadecimales.
<img width="814" height="208" alt="imagen" src="https://github.com/user-attachments/assets/e19e7f9f-5f4c-4737-a513-198bda302a59" />


## 3. Operadores de nivel de bits:

Pregunta: Agregue operadores de nivel de bits como AND y OR a la calculadora.

Instrucciones:
    • Considere cómo implementar el operador OR usando una barra vertical (|), que también se usa para el valor absoluto unario.
    • Discuta cómo puede diferenciar entre los dos usos del operador en expresiones como ‘factor exp ABS’.
<img width="823" height="316" alt="imagen" src="https://github.com/user-attachments/assets/3049658b-7c58-48cd-a376-d9df7991e0a0" />



## 4. Reconocimiento de tokens:

Pregunta: ¿La versión manuscrita del escáner en el Ejemplo 1-4 reconoce exactamente los mismos tokens que la versión generada por flex?

Ambas versiones aceptàn los mismos caraceres y los comnetarios se ignoran.

## 5. Limitaciones de Flex:

Pregunta: ¿Puedes pensar en idiomas para los que Flex no sería una buena herramienta para escribir un escáner?

No serìa una buena herramiena para lenguajes como Python, Haskell, HTML, JS y C++ debidio al manejo de estructuras como la identaciòn, comentarios anidados, estructuras recursivas y los lenguajes mezcados o embebidos. 
Una alternativa serìa integrar la lógica de indentación en una capa previa al parser)

## 6. Programa de conteo de palabras:

Pregunta: Reescriba el programa de conteo de palabras en C. Ejecute algunos archivos grandes en ambas versiones. ¿Es la versión C notablemente más rápida? ¿Fue mucho más difícil de depurar?

<img width="808" height="226" alt="imagen" src="https://github.com/user-attachments/assets/30a4c1d5-aaf1-4153-90b5-a7610882a62b" />

<img width="823" height="213" alt="imagen" src="https://github.com/user-attachments/assets/19c58764-1b4f-4688-9d1d-17cab66919d5" />

Resulta màs rapido C

Prueba con una archivo màs extenso
<img width="829" height="96" alt="imagen" src="https://github.com/user-attachments/assets/17fff0b4-87e5-4f72-8515-dd7a6d1abbc3" />

<img width="829" height="96" alt="imagen" src="https://github.com/user-attachments/assets/4c6cfd40-ddbd-456b-b314-5cb6267ea3cc" />

Se evidencia que en un texto màs largo y con màs tipos de caracteres Flex resulta màs eficiente.

---
### Ejecutar
Flex


        $ flex fb1-1.l



        
compilar - se produce del anterior - band


        $ cc lex.yy.c -lfl


ejecutable



        $ ./a.out

Flex y Bison 


        bison -d calc.y      # genera calc.tab.c y calc.tab.h
        flex calc.l          # genera lex.yy.c
        cc calc.tab.c lex.yy.c -lfl -o calc

### Referencias 
- https://github.com/westes/flex 
