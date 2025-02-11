class BookEntity {
  final String bookId;
  final String image;
  final String title;
  final String author;
  final num rating;
  final num pages;

  BookEntity(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.author,
      required this.rating,
      required this.pages});
}
