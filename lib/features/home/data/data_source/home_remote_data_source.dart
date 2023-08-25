import 'package:books/features/home/data/models/book_model/book_model.dart';

import '../../../../core/utils/api_service.dart';
import '../../domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookeEntity>> fetchFeaturedbooks();
  Future<List<BookeEntity>> fetchNewestbooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookeEntity>> fetchFeaturedbooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
    List<BookeEntity> books = getBooksList(data);
    return books;
  }

  @override
  Future<List<BookeEntity>> fetchNewestbooks() async {
    var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookeEntity> books = getBooksList(data);
    return books;
  }

  List<BookeEntity> getBooksList(Map<String, dynamic> data) {
    List<BookeEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
