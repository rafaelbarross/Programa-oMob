// Questão 03: Escreva um programa com um método que receba uma String e retorne o
// número de vogais dessa String.

void main(List<String> args) {
  Vogal vogal = new Vogal();
  vogal.numerosDeVogais("Naja");
}

class Vogal {
  void numerosDeVogais(String palavra) {
    var regex = RegExp(r'[aeiouAEIOU]');
    int cont = 0;

    for (int i = 0; i < palavra.length; i++) {
      // método hasMatch usado para verificar se a variavel corresponde a expressão regular
      if (regex.hasMatch(palavra[i])) {
        cont++;
      }
    }

    if (cont > 0) {
      print("\nA palavra $palavra tem $cont vogais. 😁");
    } else {
      print("\nA palavra $palavra não tem vogais! 😥");
    }

  }
}
