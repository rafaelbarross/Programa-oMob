// Questão 09: Escreva um programa que leia um conjunto de idades e calcule a média. O
// programa deve ler as idades até o usuário digitar -1.

import 'dart:io';

void main(List<String> args) {
   List<int> idades = [];
  int idade = 0;
  
  while (idade != -1) {
    print("Digite uma idade (-1 para encerrar): ");
    idade = int.parse(stdin.readLineSync()!);
    
    if (idade != -1) {
      idades.add(idade);
    }
  }

  int soma = 0;
  for (int i = 0; i < idades.length; i++) {
    soma += idades[i];
  }

  double media = idades.isNotEmpty ? soma / idades.length : 0;

  print("Idades digitadas: $idades");
  print("Soma das idades: $soma");
  print("Média das idades: $media");

}