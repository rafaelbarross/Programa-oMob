// Questão 04: Escreva um programa para gerenciar o IMC de diferentes pessoas.
// Para realizar o cadastro, o programa deve conter o peso, a altura e o nome de cada
// pessoa. No método main, crie uma lista com 03 pessoas e forneça as seguintes
// opções:
// 1. Mostrar as pessoas que estão abaixo do peso (IMC < 18,5)
// 2. Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25)
// 3. Mostrar as pessoas que estão acima do peso (IMC > = 25)
// Obs.: imc =
// peso
// altura ∗ altura

import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  List<Pessoa> pessoas = [];

  pessoas.add(Pessoa(50, 1.80, "Rafa"));
  pessoas.add(Pessoa(70, 1.80, "Mauricio"));
  pessoas.add(Pessoa(300, 1.78, "João"));

  int opcao = 0;

  while (opcao != 4) {
    print(
        """\n1. Mostrar as pessoas que estão abaixo do peso (IMC < 18,5)\n2. Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25)\n3. Mostrar as pessoas que estão acima do peso (IMC > = 25)""");
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        for (var pessoa in pessoas) {
          double imc = calcularIMC(pessoa.peso, pessoa.altura);
          if (imc < 18.5) {
            print(
                "\n${pessoa.nome} está abaixo do peso (IMC: ${imc.toStringAsFixed(2)})");
          }
        }
        break;

      case 2:
        for (var pessoa in pessoas) {
          double imc = calcularIMC(pessoa.peso, pessoa.altura);
          if (imc > 18.5 && imc < 25) {
            print(
                "\n${pessoa.nome} está no peso ideal (IMC: ${imc.toStringAsFixed(2)})");
          }
        }
        break;

      case 3:
        for (var pessoa in pessoas) {
          double imc = calcularIMC(pessoa.peso, pessoa.altura);
          if (imc >= 25) {
            print(
                "\n${pessoa.nome} está acima do peso (IMC: ${imc.toStringAsFixed(2)})");
          }
        }
        break;

      case 4:
        print("Saindo...");
        break;
      default:
        print("Opção inválida!");
    }
  }
}

class Pessoa {
  double peso, altura;
  String nome;

  Pessoa(this.peso, this.altura, this.nome);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}
