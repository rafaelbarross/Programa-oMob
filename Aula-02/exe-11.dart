// Questão 11: Escreva um programa que leia um conjunto de números e determine
// quantos números pares foram digitados.

import 'dart:io';

void main(List<String> args) {
  print("Digite uma lista de números separados por espaço:");
  var numeros = stdin
      .readLineSync()!
      .split(' ')
      .map((numero) => int.parse(numero))
      .toList();

  int cont = 0;
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      cont++;
    }
  }

  print("\nForam digitados $cont números pares.");
}
