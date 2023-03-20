// Questão 04: Escreva um programa que leia os 03 lados de um triangulo e determine se
// ele é: equilátero, isósceles ou escaleno. (Equilátero: três lados iguais, Isósceles: dois
// lados iguais, Escaleno: três lados diferentes)

import 'dart:io';

void main(List<String> args) {
  print("Digite o primeiro lado do tringulo: ");
  double lado1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo lado do tringulo: ");
  double lado2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro lado do tringulo: ");
  double lado3 = double.parse(stdin.readLineSync()!);

  if (lado1 == lado2 && lado1 == lado3) {
    print("O triangulo com os lados $lado1, $lado2 e $lado3 é Equilátero!");
  }

  // outrosLados =  lado2 + lado3;   outrosLados == 1; 

  else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("O triangulo com os lados $lado1, $lado2 e $lado3 é Isósceles!");
  } 
  
  else {
    print("O triangulo com os lados $lado1, $lado2 e $lado3 é Escaleno!");
  }
}
