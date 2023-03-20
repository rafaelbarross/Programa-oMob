// Questão 05: Escreva um programa que leia a altura de 05 pessoas e calcule a média.

import 'dart:io';

void main(List<String> args) {
  print("Digite a altura da pessoa 01:");
  double altura1 = double.parse(stdin.readLineSync()!);

  print("Digite a altura da pessoa 02:");
  double altura2 = double.parse(stdin.readLineSync()!);

  print("Digite a altura da pessoa 03:");
  double altura3 = double.parse(stdin.readLineSync()!);

  print("Digite a altura da pessoa 04:");
  double altura4 = double.parse(stdin.readLineSync()!);

  print("Digite a altura da pessoa 05:");
  double altura5 = double.parse(stdin.readLineSync()!);

  double media = (altura1 + altura2 + altura3 + altura4 + altura5) / 5;

  print("A média das alturas das pessoas é de: $media");
}
