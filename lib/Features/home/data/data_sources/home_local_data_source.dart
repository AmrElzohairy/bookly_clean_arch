import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> getLeadingBooks();
  List<BookEntity> getNewestBooks();
}
