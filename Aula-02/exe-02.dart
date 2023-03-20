// Questão 02: Escreva um programa que imprima os números pares entre 0 e 100.

void main(List<String> args) {
  for (int i = 1; i < 100; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
