import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSoure {
  Future<List<BookEntity>> getLeadingBooks();
  Future<List<BookEntity>> getNewestBooks();
}
