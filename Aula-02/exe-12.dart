// Questão 12: Escreva um programa que leia dois números e a operação aritmética
// desejada.
// Se o usuário digita ‘+’, retorne o resultado da soma entre os números;
// Se o usuário digita ‘-’, retorne o resultado da subtração entre os números;
// Se o usuário digita ‘*’, retorne o resultado da multiplicação entre os números;
// Se o usuário digita ‘/’, retorne o resultado da divisão entre os números;

import 'dart:io';

void main(List<String> args) {
  print("Digite o primeiro número: ");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo número: ");
  double n2 = double.parse(stdin.readLineSync()!);

  var opcao;
  while (opcao != 'S' || opcao != 's') {
    print("\n== Escolha a operação aritmética desejada ==\n");

    print("+ : retorne o resultado da soma entre os números");
    print("- : retorne o resultado da subtração entre os números");
    print("* : retorne o resultado da multiplicação entre os números");
    print("/ : retorne o resultado da divisão entre os números");

    opcao = stdin.readLineSync()!;

    switch (opcao) {
      case "+":
        double somaResultado = n1 + n2;
        print("\nO resultado da soma de $n1 + $n2 é: $somaResultado");
        break;

      case "-":
        double subResultado = n1 - n2;
        print("\nO resultado da subtração de $n1 - $n2 é: $subResultado");
        break;

      case "*":
        double multiResultado = n1 * n2;
        print("\nO resultado da multiplicação de $n1 * $n2 é: $multiResultado");
        break;

      case "/":
        double divResultado = n1 / n2;
        print("\nO resultado da divisão de $n1 / $n2 é: $divResultado");
        break;

      default:
        print("\ninforme uma opção válida!");
    }
  }
}