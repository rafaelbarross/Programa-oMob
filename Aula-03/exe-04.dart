// Questão 04: Escreva um programa com um método que receba o salário de um
// funcionário e calcule o imposto que ele deve pagar. Utilize os seguintes valores para
// calcular o imposto:
// • Até R$ 2.000,00 – Isento de imposto
// • De R$ 2.000,01 até R$ 3.500,00 – 15% de imposto
// • De R$ 3.500,01 até R$ 5.000,00 – 22% de imposto
// • Acima de R$ 5.000,01 – 30% de imposto

import 'dart:ffi';

void main(List<String> args) {
  Imposto imposto = new Imposto();
  print("\nO valor do seu imposto é: " + imposto.calcularImposto(5001).toString());
}

class Imposto {
  double calcularImposto(double salario) {
    if (salario <= 2000) {
      return 0;
    } else if (salario > 2000 && salario <= 3500) {
      return salario * 0.15;
    } else if (salario > 3500 && salario <= 5000) {
      return salario * 0.22;
    } else {
      return salario * 0.30;
    } 
  }
}
