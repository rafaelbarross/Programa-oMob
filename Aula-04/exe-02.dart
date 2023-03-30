import 'dart:io';

void main(List<String> args) {
  Retangulo retangulo = new Retangulo(4, 8);
  print("""1. Calcular Área\n2. Calcular Perímetro\n3. Sair""");

  int opcao = 0;

  while (opcao != 3) {
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        print("O valor da Area é: " + retangulo.calcularArea().toString());
        break;
      case 2:
        print("O valor do perimetro é: " +
            retangulo.calcularPerimetro().toString());
        break;
      case 3:
        print("Saindo...");
        break;
      default:
        print("Opção inválida!");
    }
  }
}

class Retangulo {
  double base, altura;

  Retangulo(this.base, this.altura) {}

  double calcularArea() {
    return base * altura;
  }

  double calcularPerimetro() {
    return (base * base) + (altura * altura);
  }
}
