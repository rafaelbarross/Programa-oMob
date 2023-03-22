// Questão 05: Escreva um programa com métodos para calcular a área ( ) e o
// perímetro de um retângulo ( ). Forneça as seguintes opções ao usuário:
// 1. Calcular a área do retângulo
// 2. Calcular o perímetro do retângulo

import 'dart:io';

void main(List<String> args) {
  Retangulo retangulo = new Retangulo();
  retangulo.Menu();
}

class Retangulo {
  late int base, altura;
  void Menu() {
    print("\nDigite a base do Retangulo:");
    base = int.parse(stdin.readLineSync()!);

    print("Digite a altura do Retangulo");
    altura = int.parse(stdin.readLineSync()!);

    int opcao = 0;
    while (opcao != 3) {
      print("\n1 - Calcular a área do retângulo");
      print("2 - Calcular o perímetro do retângulo");
      print("3 - Sair");
      opcao = int.parse(stdin.readLineSync()!);

      switch (opcao) {
        case 1:
          print("\nA área do retangulo de base $base e altura $altura é: " +
              calcularArea().toString());
          break;

        case 2:
          print(
              "\nO perímetro do retangulo de base $base e altura $altura é: " +
                  calcularPerimetro().toString());
          break;
        case 3:
          print("\nSaindo...");
          break;
        default:
          print("\nDigite uma opçao válida!");
      }
    }
  }

  int calcularArea() {
    return base * altura;
  }

  int calcularPerimetro() {
    return 2 * (base + altura);
  }
}