import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_services.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepsIpml implements HomeRepo {
  final ApiServices apiServices;

  HomeRepsIpml(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }
}
