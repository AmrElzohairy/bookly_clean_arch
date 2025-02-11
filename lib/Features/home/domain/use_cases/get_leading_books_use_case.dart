import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/Features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class GetLeadingBooksUseCase {
  final HomeRepo homeRepo;

  GetLeadingBooksUseCase({required this.homeRepo});

  Future<Either<Failure, List<BookEntity>>> getLeadingBooks() async {
    return await homeRepo.getLeadingBooks();
  }
}
