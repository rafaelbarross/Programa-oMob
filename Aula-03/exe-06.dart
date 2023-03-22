// Questão 06: Escreva um programa com métodos que façam a conversão de Fahrenheit
// para Celsius ( – ) e de Kelvin para Celsius ( )). Forneça as
// seguintes opções ao usuário:
// 1. Transformar de Fahrenheit para Celsius
// 2. Transformar de Kelvin para Celsius

import 'dart:io';

void main(List<String> args) {
  Temperatura temperatura = new Temperatura();
  temperatura.Menu();
}

class Temperatura {
  late double valor;

  void Menu() {
    int opcao = 0;
    print("\nDigite o valor que deseja converter: ");
    valor = double.parse(stdin.readLineSync()!);
    while (opcao != 3) {
      print("\n1 - Transformar de Fahrenheit para Celsius");
      print("2 - Transformar de Kelvin para Celsius");
      print("3 - Sair");

      opcao = int.parse(stdin.readLineSync()!);

      switch (opcao) {
        case 1:
          print("\nResultado da conversao de F $valor para Celsius é: " +
              FahrenheitToCelsius().toStringAsFixed(2));
          break;
        case 2:
          print("\nResultado da conversao de K $valor para Celsius é: " +
              KelvinToCelsius().toStringAsFixed(2));
          break;
        case 3:
          print("\nSaindo...");
          break;
        default:
          print("\nDigite uma opçao válida!");
      }
    }
  }

  double FahrenheitToCelsius() {
    return (valor - 32) / 1.8;
  }

  double KelvinToCelsius() {
    return valor - 273;
  }
}
