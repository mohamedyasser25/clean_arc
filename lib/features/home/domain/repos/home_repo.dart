import 'package:books/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entities.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookeEntity>>> fetchFeaturedbooks();
  Future<Either<Failure, List<BookeEntity>>> fetchNewesbooks();
}
