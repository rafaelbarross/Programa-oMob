// Questão 01: Escreva um programa com um método que receba um número e determine
// se esse número é par ou ímpar.

import 'dart:io';

void main(List<String> args) {
  // cria um objeto da classe ParOrImpar
  ParOrImpar teste = new ParOrImpar();
  // chama o método verificar() no objeto teste, passando o número 90 como argumento
  teste.verificar(90);
}

// classe ParOrImpar
class ParOrImpar {
  // método que verifica se um número é par ou ímpar
  int verificar(int number) {
    if (number % 2 == 0) { // se o número é divisível por 2 (par)
      print("O número $number é PAR!");
      return number; // retorna o número verificado
    } else { // caso contrário (ímpar)
      print("O número $number é IMPAR!");
      return number; // retorna o número verificado
    }
  }
}

