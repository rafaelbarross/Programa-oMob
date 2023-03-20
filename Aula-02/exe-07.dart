// Questão 07: Escreva um programa que leia 30 números e determine qual o menor
// número digitado.

import 'dart:io';

void main(List<String> args) {
  double menor = double.infinity;

  for (int i = 1; i < 5; i++) {
    print("Digite o $i número: ");
    double n = double.parse(stdin.readLineSync()!);

    if (n < menor) {
      menor = n;
    }
  }
  print("O menor número é: $menor");
}
