import 'package:books/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entities.dart';

class FeatchFetureBooksUsecase extends Usecase<List<BookeEntity>, NoParam> {
  final HomeRepo homeRepo;

  FeatchFetureBooksUsecase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookeEntity>>> call([NoParam? param]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedbooks();
  }
}

abstract class Usecase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam {}
