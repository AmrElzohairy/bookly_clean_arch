import 'package:bookly_clean_arch/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../constants.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> getLeadingBooks() {
    var box = Hive.box<BookEntity>(kLeadingBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBooks);
    return box.values.toList();
  }
}
