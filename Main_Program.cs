using System;

class Main_Program
{
    static void Main(string[] args)
    {
        int numeroA = 42;
        int numeroB = 56;
        int numeroC = 23;
        int mayorNumero = CalculadoraDeNumeros.EncontrarMayor(numeroA, numeroB, numeroC);
        Console.WriteLine($"El mayor de {numeroA}, {numeroB}, y {numeroC} es {mayorNumero}");

        int numeroParaEvaluar = 29;
        var resultadoEvaluacion = EvaluadorDeNumeros.EvaluarNumero(numeroParaEvaluar);
        Console.WriteLine($"Número: {numeroParaEvaluar}");
        Console.WriteLine($"Es Primo: {resultadoEvaluacion.EsPrimo}");
        Console.WriteLine($"Es Par: {resultadoEvaluacion.EsPar}");
    }
}