import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/Feature/home/domain/repos/home_repo.dart';
import 'package:clean_architecture/core/use_cases/use_cases.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
   return await homeRepo.fetchFeaturedBooks();
  }
  }


