// Questão 01: Crie uma classe Circulo que tenha os métodos para calcular a área (
// πr
// 2
// ) e o perímetro (2πr). No método main, crie um objeto circulo forneça as
// seguintes opções:
// 1. Calcular Área
// 2. Calcular Perímetro
// Obs.: r – Raio.

void main(List<String> args) {
  Circulo circulo = Circulo(2, 5);
  print(circulo.calcularArea().toString());
  print(circulo.calcularPerimetro().toStringAsFixed(2));
}

class Circulo {
  double pi, raio;

  Circulo(this.pi, this.raio) {}

  double calcularArea() {
    return 3.14 * (raio * raio);
  }

  double calcularPerimetro() {
    return (2 * 3.14) * raio;
  }
}
