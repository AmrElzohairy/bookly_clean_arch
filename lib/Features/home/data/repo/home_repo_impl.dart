import 'package:bookly_clean_arch/Features/home/data/data_sources/home_local_data_source_impl.dart';
import 'package:bookly_clean_arch/Features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/Features/home/domain/repo/home_repo.dart';
import 'package:bookly_clean_arch/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;
  final HomeLocalDataSourceImpl homeLocalDataSourceImpl;

  HomeRepoImpl(
      {required this.homeRemoteDataSourceImpl,
      required this.homeLocalDataSourceImpl});
  @override
  Future<Either<Failure, List<BookEntity>>> getLeadingBooks() async {
    try {
      var localBooks = homeLocalDataSourceImpl.getLeadingBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      } else {
        var data = await homeRemoteDataSourceImpl.getLeadingBooks();
        return right(data);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getNewestBooks() async {
    try {
      var localBooks = homeLocalDataSourceImpl.getNewestBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      } else {
        var data = await homeRemoteDataSourceImpl.getNewestBooks();
        return right(data);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
