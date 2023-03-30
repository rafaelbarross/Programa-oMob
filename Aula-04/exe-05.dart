// Questão 05: Crie uma classe estudante. Esta classe deve ter nome, número de
// matrícula, endereço, e 04 notas. Forneça um construtor e métodos para alterar e
// obter o nome do estudante e as notas. Além disso, crie um método para calcular a
// média do estudante. No método main, crie uma lista com 03 estudantes e forneça
// as seguintes opções:

// 1. Listar os estudantes aprovados e suas notas
// 2. Listar os estudantes reprovados e suas notas
// 3. Listar as matriculas e as notas de todos os estudantes
// 4. Listar os nomes e os endereços de todos os estudantes

import 'dart:io';

void main(List<String> args) {
  List<Estudante> estudantes = [];

  estudantes.add(
      Estudante("Ana Silva", "Rua A, 123", 20210001, [8.5, 7.2, 9.0, 6.0]));
  estudantes.add(
      Estudante("João Santos", "Av. B, 456", 20210002, [6.8, 7.5, 6.9, 6.0]));
  estudantes.add(
      Estudante("Maria Souza", "Rua C, 789", 20210003, [9.5, 9.2, 8.8, 6.0]));

  int opcao = 0;

  while (opcao != 5) {
    print("\n1. Listar os estudantes aprovados e suas notas");
    print("2. Listar os estudantes reprovados e suas notas");
    print("3. Listar as matriculas e as notas de todos os estudantes");
    print("4. Listar os nomes e os endereços de todos os estudantes");
    print("5. Sair");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        for (var estudante in estudantes) {
          if (estudante.media() >= 6) {
            print(
                "Estudante ${estudante.nome}, matrícula ${estudante.numeroMatricula}, notas ${estudante.notas}");
          } else {
            print("Não há estudantes aprovados!");
          }
        }
        break;
      case 2:
        for (var estudante in estudantes) {
          if (estudante.media() < 6) {
            print(
                "Estudante ${estudante.nome}, matrícula ${estudante.numeroMatricula}, notas ${estudante.notas}");
          } else {
            print("Não há estudantes reprovados!");
            break;
          }
        }
        break;
      case 3:
        for (var estudante in estudantes) {
          print(
              "Estudante ${estudante.nome}, matrícula ${estudante.numeroMatricula}, notas ${estudante.notas}");
        }
        break;
      case 4:
        for (var estudante in estudantes) {
          print("Estudante ${estudante.nome}, endereço ${estudante.endereco}");
        }
        break;
      case 5:
        print("\nSaindo...");

        break;
      default:
        print("Digite uma opção válida!");
    }
  }
}

class Estudante {
  String nome, endereco;
  int numeroMatricula;
  List<double> notas;

  Estudante(this.nome, this.endereco, this.numeroMatricula, this.notas);

  // getters
  String getNome() {
    return this.nome;
  }

  String getEndereco() {
    return this.endereco;
  }

  int getNumeroMatricula() {
    return this.numeroMatricula;
  }

  List<double> getNotas() {
    return this.notas;
  }

  // setters
  void setNome(String nome) {
    this.nome = nome;
  }

  void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  void setNotas(List<double> notas) {
    this.notas = notas;
  }

  double media() {
    double soma = 0;
    for (var nota in notas) {
      soma += nota;
    }
    return soma / notas.length;
  }
}
