// Questão 06: Escreva um programa que leia 05 números e determine qual o maior
// número digitado.

import 'dart:io';

void main(List<String> args) {
  double maior = double.negativeInfinity;

  for (int i = 1; i < 6; i++) {
    print("Digite o $i número: ");
    double n = double.parse(stdin.readLineSync()!);

    if (n > maior) {
      maior = n;
    }
  }
  print("O maior número é: $maior");
}
