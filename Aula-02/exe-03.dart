// Questão 03: Escreva um programa que leia um número e determine se ele é par ou
// ímpar.

import 'dart:io';

void main(List<String> args) {
  print("Digite um numero: ");
  var num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("O número $num é PAR!");
  } else {
    print("O número $num é IMPAR!");
  }
}
