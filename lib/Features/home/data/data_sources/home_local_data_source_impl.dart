import 'package:bookly_clean_arch/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> getLeadingBooks() {
    // TODO: implement getLeadingBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> getNewestBooks() {
    // TODO: implement getNewestBooks
    throw UnimplementedError();
  }
}