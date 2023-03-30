// Questão 07: Escreva um programa com um método que receba um vetor como
// parâmetro e calcule a média dos valores contidos no vetor. Obs.: O tamanho do vetor
// deve ser informado pelo usuário.

import 'dart:io';
void main(List<String> args) {

  stdout.write('\nDigite o tamanho do vetor: ');
  int tamanho = int.parse(stdin.readLineSync()!);

  List<double> vetor = [];

  for (int i = 0; i < tamanho; i++) {
    stdout.write('Digite o elemento ${i + 1}: ');
    double elemento = double.parse(stdin.readLineSync()!);
    vetor.add(elemento);
  }

  double media = calcularMedia(vetor);
  print('\nA média dos valores contidos no vetor é: ${media.toStringAsFixed(2)}');
}

double calcularMedia(List<double> vetor) {
  double soma = 0;
  for (int i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }
  return soma / vetor.length;
  
}