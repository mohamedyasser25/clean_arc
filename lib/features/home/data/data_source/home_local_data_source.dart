import '../../domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookeEntity> fetchFeaturedbooks();
  List<BookeEntity> fetchNewestbooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookeEntity> fetchFeaturedbooks() {
    // TODO: implement fetchFeaturedbooks
    throw UnimplementedError();
  }

  @override
  List<BookeEntity> fetchNewestbooks() {
    // TODO: implement fetchNewestbooks
    throw UnimplementedError();
  }
}
