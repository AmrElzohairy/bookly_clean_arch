import 'book_data.dart';

class BookModel {
  String? kind;
  int? totalItems;
  List<BookData>? bookData;

  BookModel({this.kind, this.totalItems, this.bookData});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        bookData: (json['items'] as List<dynamic>?)
            ?.map((e) => BookData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': bookData?.map((e) => e.toJson()).toList(),
      };
}
