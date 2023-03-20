// Questão 10: Escreva um programa que leia um conjunto de números e determine qual
// o maior número digitado.

import 'dart:io';

void main(List<String> args) {
  
  print("Digite uma lista de números separados por espaço:");
  var numeros = stdin.readLineSync()!.split(' ').map((numero) => int.parse(numero)).toList();
  
  var maiorNumero = numeros[0];
  
  for (var i = 1; i < numeros.length; i++) {
    if (numeros[i] > maiorNumero) {
      maiorNumero = numeros[i];
    }
  }
  
  print("O maior número digitado foi: $maiorNumero");
}