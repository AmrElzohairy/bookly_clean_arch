import 'package:bookly_clean_arch/Features/home/data/data_sources/home_remote_data_soure.dart';
import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSoure {
  @override
  Future<List<BookEntity>> getLeadingBooks() {
    // TODO: implement getLeadingBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> getNewestBooks() {
    // TODO: implement getNewestBooks
    throw UnimplementedError();
  }
}