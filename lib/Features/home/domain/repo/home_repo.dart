import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> getLeadingBooks();
  Future<Either<Failure, List<BookEntity>>> getNewestBooks();
}
