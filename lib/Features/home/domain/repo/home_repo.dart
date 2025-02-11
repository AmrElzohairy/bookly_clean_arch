import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> getHorizontalBooks();
  Future<List<BookEntity>> getNewestBooks();
}
