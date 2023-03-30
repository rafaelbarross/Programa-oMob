// Questão 03: Crie uma classe Livro que possua: autor, editora, ISBN, titulo,
// categoria e Ano de Edição. No método main, crie uma lista com 03 livros e forneça
// as seguintes opções:
// 1. Listar livros por categoria
// 2. Listar livros por editora
// 3. Listar livros por autor
// 4. Listar todos os livros disponíveis

import 'dart:io';

void main(List<String> args) {
  List<Livro> livros = [];

  livros.add(Livro("João Silva", "Editora ABC", "978-3-16-148410-0",
      "Aventuras de Dart", "Ficção", "2022"));
  livros.add(Livro("Maria Souza", "Editora XYZ", "978-3-16-148410-1",
      "Programando em Dart", "Tecnologia", "2020"));
  livros.add(Livro("Pedro Santos", "Editora W", "978-3-16-148410-2",
      "História do Brasil", "História", "2019"));

  int opcao = 0;
  while (opcao != 5) {
    print("1. Listar livros por categoria");
    print("2. Listar livros por editora");
    print("3. Listar livros por autor");
    print("4. Listar todos os livros disponíveis");
    print("5. Sair");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write("\nInforme a categoria que deseja: ");
        String pesquisaCat = stdin.readLineSync()!;

        for (var livro in livros) {
          if (livro.categoria.toLowerCase() == pesquisaCat.toLowerCase()) {
            print("\nAutor: ${livro.autor}");
            print("Editora: ${livro.editora}");
            print("ISBN: ${livro.isbn}");
            print("Título: ${livro.titulo}");
            print("Categoria: ${livro.categoria}");
            print("Ano de edição: ${livro.anoEdicao}");
            print("---------------");
          }
        }
        break;

      case 2:
        stdout.write("\nInforme a editora que deseja: ");
        String pesquisaEdit = stdin.readLineSync()!;

        for (var livro in livros) {
          if (livro.editora.toLowerCase() == pesquisaEdit.toLowerCase()) {
            print("\nAutor: ${livro.autor}");
            print("Editora: ${livro.editora}");
            print("ISBN: ${livro.isbn}");
            print("Título: ${livro.titulo}");
            print("Categoria: ${livro.categoria}");
            print("Ano de edição: ${livro.anoEdicao}");
            print("---------------");
          }
        }
        break;

      case 3:
        stdout.write("\nInforme o autor que deseja: ");
        String pesquisaAutor = stdin.readLineSync()!;

        for (var livro in livros) {
          if (livro.autor.toLowerCase() == pesquisaAutor.toLowerCase()) {
            print("\nAutor: ${livro.autor}");
            print("Editora: ${livro.editora}");
            print("ISBN: ${livro.isbn}");
            print("Título: ${livro.titulo}");
            print("Categoria: ${livro.categoria}");
            print("Ano de edição: ${livro.anoEdicao}");
            print("---------------");
          }
        }
        break;

      case 4:
        for (var livro in livros) {
          print("\nAutor: ${livro.autor}");
          print("Editora: ${livro.editora}");
          print("ISBN: ${livro.isbn}");
          print("Título: ${livro.titulo}");
          print("Categoria: ${livro.categoria}");
          print("Ano de edição: ${livro.anoEdicao}");
          print("---------------");
        }
        break;

      case 5:
        print("Saindo...");
        break;
      default:
        print("\nOpção inválida!");
    }
  }
}

class Livro {
  String autor, editora, isbn, titulo, categoria, anoEdicao;

  Livro(this.autor, this.editora, this.isbn, this.titulo, this.categoria,
      this.anoEdicao);
}