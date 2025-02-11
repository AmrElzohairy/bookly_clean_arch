import 'package:bookly_clean_arch/Features/home/data/data_sources/home_remote_data_soure.dart';
import 'package:bookly_clean_arch/Features/home/data/models/book_model/book_data.dart';
import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/core/utils/api_services.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSoure {
  final ApiServices api;

  HomeRemoteDataSourceImpl({required this.api});
  @override
  Future<List<BookEntity>> getLeadingBooks() async {
    var data = await api.get(
      'volumes?Filtering=free-ebooks&q=programming',
    );
    List<BookEntity> books = getParsedList(data);

    return books;
  }

  @override
  Future<List<BookEntity>> getNewestBooks() async {
    var data = await api.get(
      'volumes?Filtering=free-ebooks&Sorting=newest',
    );
    List<BookEntity> books = getParsedList(data);

    return books;
  }
}

getParsedList(data) {
  List<BookEntity> list = [];
  for (var bookData in data['items']) {
    list.add(BookData.fromJson(bookData));
  }
  return list;
}
