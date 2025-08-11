# Primeros-pasos-Flex-y-Bison

## 1. Manejo de comentarios:

    Pregunta: ¿La calculadora aceptará una línea que contenga solo un comentario? ¿Por qué o no? ¿Sería más fácil corregir esto en el escáner o analizador?
    
<img width="814" height="208" alt="imagen" src="https://github.com/user-attachments/assets/dc439a25-fc5b-4ecc-b092-34c044d45df4" />

    Instrucciones: Reflexiona sobre el papel de los comentarios en tu código. Considere cómo el escáner y el analizador manejan los comentarios y proporcione una explicación detallada de su razonamiento.

## 2. Conversión hexadecimal:

    Pregunta: Convierta la calculadora en una calculadora hexadecimal que acepte números hexadecimales y decimales.

    Instrucciones:
    • Agregue un patrón como 0x[a-f0-9]+ en el escáner para identificar números hexadecimales.
    • Use strtol en el código de acción para convertir la cadena en un número y almacenarlo en yylval.
    • Asegúrese de que la calculadora devuelva un token NUMBER.
    • Ajuste la salida printf para mostrar los resultados en formatos decimales y hexadecimales.
<img width="814" height="208" alt="imagen" src="https://github.com/user-attachments/assets/e19e7f9f-5f4c-4737-a513-198bda302a59" />


## 3. Operadores de nivel de bits:

    Pregunta: Agregue operadores de nivel de bits como AND y OR a la calculadora.

    Instrucciones:
    • Considere cómo implementar el operador OR usando una barra vertical (|), que también se usa para el valor absoluto unario.
    • Discuta cómo puede diferenciar entre los dos usos del operador en expresiones como ‘factor exp ABS’.
<img width="823" height="316" alt="imagen" src="https://github.com/user-attachments/assets/3049658b-7c58-48cd-a376-d9df7991e0a0" />



## 4. Reconocimiento de tokens:

    Pregunta: ¿La versión manuscrita del escáner en el Ejemplo 1-4 reconoce exactamente los mismos tokens que la versión generada por flex?

    Instrucciones: Compare las dos versiones del escáner. Identifique cualquier discrepancia en el reconocimiento de tokens y explique sus hallazgos.

## 5. Limitaciones de Flex:

    Pregunta: ¿Puedes pensar en idiomas para los que Flex no sería una buena herramienta para escribir un escáner?

    Instrucciones: Reflexiona sobre los tipos de idiomas y sus características. Proporcione ejemplos y justifique su razonamiento.

## 6. Programa de conteo de palabras:

    Pregunta: Reescriba el programa de conteo de palabras en C. Ejecute algunos archivos grandes en ambas versiones. ¿Es la versión C notablemente más rápida? ¿Fue mucho más difícil de depurar?
