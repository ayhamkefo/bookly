import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/book_model/book_model.dart';

class SearchRepo {
  final ApiServices apiServices;

  SearchRepo(this.apiServices);

  Future<Either<Failure, Either<String, List<BookModel>>>> fetchSearchedBooks(
      String searchText) async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:$searchText&Filtering=free-ebooks&orderBy=relevance');

      if (data["totalItems"] > 0) {
        List<BookModel> books = [];
        for (var book in data['items']) {
          books.add(BookModel.fromJson(book));
        }
        return right(right(books));
      } else {
        return right(left('Result Not found'));
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }
}
