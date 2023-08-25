class BookeEntity {
  final String bookId;
  final String? image;
  final String? autherName;
  final String title;
  final num? salary;
  final num? rating;

  BookeEntity(
      {required this.image,
      required this.autherName,
      required this.title,
      required this.salary,
      required this.rating,
      required this.bookId, 
       });
}
