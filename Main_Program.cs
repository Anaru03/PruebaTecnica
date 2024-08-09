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

public static class CalculadoraDeNumeros
{
    public static int EncontrarMayor(int num1, int num2, int num3)
    {
        return Math.Max(num1, Math.Max(num2, num3));
    }
}

public class ResultadoEvaluacion
{
    public bool EsPrimo { get; set; }
    public bool EsPar { get; set; }
}

public static class EvaluadorDeNumeros
{
    public static ResultadoEvaluacion EvaluarNumero(int n)
    {
        ResultadoEvaluacion resultado = new ResultadoEvaluacion
        {
            EsPar = (n % 2 == 0),
            EsPrimo = EsNumeroPrimo(n)
        };
        return resultado;
    }

    private static bool EsNumeroPrimo(int numero)
    {
        if (numero <= 1) return false;
        for (int i = 2; i < numero; i++)
        {
            if (numero % i == 0) return false;
        }
        return true;
    }
}