// Questão 02: Escreva um programa que leia 02 números e a operação aritmética
// desejada. Se o usuário digitar:
// 1. Retornar a soma entre dois números;
// 2. Retornar a subtração entre dois números;
// 3. Retornar a multiplicação entre dois números;
// 4. Retornar a divisão entre dois números;
// Obs.: Cada opção deve ser um método diferente.

// Contribuidores: João Pedro Aurelaino da Silva;
// José Maurício Eliziario da Silva Nobre.

import 'dart:io';

void main(List<String> args) {
  Calculator operacoes = new Calculator();
  operacoes.relizaOperacoes();
}

class Calculator {
  // ummh o que é isso?
  late double n1;
  late double n2;

  void relizaOperacoes() {
    int opcao = 0;
    while (opcao != 5) {
      print("\n === CALCULADORA DA ERA DA PEDRA ===");

      print("\nDigite o primeiro número: ");
      n1 = double.parse(stdin.readLineSync()!);

      print("\nDigite o segundo número: ");
      n2 = double.parse(stdin.readLineSync()!);

      print("\n1 - Retorna a soma entre dois números");
      print("2 - Retorna a subtração entre dois números");
      print("3 - Retorna a multiplicação entre dois números");
      print("4 - Retorna a divisão entre dois números");
      print("5 - Sair");

      try {
        opcao = int.parse(stdin.readLineSync()!);
        // é uma exceção que é lançada quando ocorre um erro
      } catch (FormatException) {
        print("\nDigite uma opção válida!\n");
      }

      switch (opcao) {
        case 1:
          // Raça absoluta alémmmm da consciência...
          print("\nO resultado de $n1 + $n2 é: \n" + soma(n1, n2).toString());
          break;

        case 2:
          print("\nO resultado de $n1 - $n2 é: \n" + sub(n1, n2).toString());
          break;
        //
        case 3:
          print("\nO resultado de $n1 * $n2 é: \n" + multi(n1, n2).toString());
          break;

        case 4:
          print("\nO resultado de $n1 / $n2 é: \n" + div(n1, n2).toString());
          break;

        case 5:
          print("Encerrando programa...");
          break;

        default:
      }

      print("\nDeseja fazer outra conta? S - SIM | N - NÃO");
      String desejo = stdin.readLineSync()!;

      if (desejo == 'S' || desejo == 's') {
        print("\nQUE BOM! FIQUE A VONTADE!");
        return (relizaOperacoes());
      } else if (desejo == 'N' || desejo == 'n') {
        print("\nJÁ VAI TARDE!");
        // graças ao oiuu de butucaaa paooo
        break;
      }
    }
  }

  double soma(double n1, double n2) {
    return n1 + n2;
  }

  double sub(double n1, double n2) {
    return n1 - n2;
  }

  double multi(double n1, double n2) {
    return n1 * n2;
  }

  double div(double n1, double n2) {
    return n1 / n2;
  }
}
