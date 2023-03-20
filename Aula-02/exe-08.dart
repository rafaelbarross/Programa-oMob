// Questão 08: Escreva um programa que calcule a idade do usuário. Para isso, o
// programa deve ler o ano de nascimento, o ano atual e depois mostrar a idade.
// Obs.: O ano deve ser informado no formato AAAA (ex.: 1980).

import 'dart:io';

void main(List<String> args) {
  print("Informe sua data de nascimento: ");
  int dataNasci = int.parse(stdin.readLineSync()!);

  print("Qual o ano atual?: ");
  int anoAtual = int.parse(stdin.readLineSync()!);

  int idade = anoAtual - dataNasci;

  print("A sua idade é: $idade");
}
