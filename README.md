# Proyecto de Prueba Técnica en C#

Este proyecto de prueba técnica en C# está diseñado para abordar dos problemas de programación:

1. **Encontrar el mayor de tres enteros**: La función `EncontrarMayor` toma tres enteros y retorna el mayor de ellos.
2. **Evaluar un número**: La función `EvaluarNumero` recibe un entero y retorna un objeto que indica si el número es primo y si es par.

## Contenido

- `Main_Program.cs`: Contiene el punto de entrada del programa, donde se utilizan las funciones `EncontrarMayor` y `EvaluarNumero`.
- `CalculadoraDeNumeros.cs`: Incluye la clase `CalculadoraDeNumeros` con el método `EncontrarMayor`.
- `EvaluadorDeNumeros.cs`: Contiene la clase `EvaluadorDeNumeros` y la clase `ResultadoEvaluacion`. La primera incluye el método `EvaluarNumero`, y la segunda define el resultado de la evaluación.

## Clases y Métodos

### `CalculadoraDeNumeros`

- **Método**: `EncontrarMayor(int num1, int num2, int num3)`
  - **Descripción**: Retorna el mayor de los tres números enteros proporcionados.

### `EvaluadorDeNumeros`

- **Método**: `EvaluarNumero(int n)`
  - **Descripción**: Retorna un objeto `ResultadoEvaluacion` con las siguientes propiedades:
    - `EsPrimo`: `true` si el número es primo, `false` en caso contrario.
    - `EsPar`: `true` si el número es par, `false` en caso contrario.

### `ResultadoEvaluacion`

- **Propiedades**:
  - `EsPrimo`: Indica si el número evaluado es primo.
  - `EsPar`: Indica si el número evaluado es par.

## Instrucciones de Uso

1. Compila el código en un entorno compatible con C#.
2. Ejecuta el programa y observa los resultados en la consola.


## Fecha

Este proyecto fue completado el 09/08/2024 por Ruth de León.