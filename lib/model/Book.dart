class Book {
  String bookId;
  String name;
  String author;
  String genre;
  int availableCopies;

  Book({
    required this.bookId,
    required this.name,
    required this.author,
    required this.genre,
    required this.availableCopies,
  });
}


class Book1 {
  final int id;
  final String name;
  final String author;
  final String genre;
  final int copies;

  Book1({
    required this.id,
    required this.name,
    required this.author,
    required this.genre,
    required this.copies,
  });
}
