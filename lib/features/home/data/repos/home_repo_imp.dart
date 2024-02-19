import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=general');

      List<BooksModel> books = [];

      for (var item in data['items']) {
        try {
          if (item != null) {
            books.add(BooksModel.fromJson(item));
          } else {
            print('error');
          }
        } catch (e) {
          print(e.toString());
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFauilre.fromDioException(e));
      }
      return left(ServerFauilre(e.toString()));
    }
  }

  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=featured');

      List<BooksModel> books = [];

      for (var item in data['items']) {
        print('there is error');
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFauilre.fromDioException(e));
      }
      return left(ServerFauilre(e.toString()));
    }
  }

  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=$category&Sorting=relevance');

      List<BooksModel> books = [];

      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFauilre.fromDioException(e));
      }
      return left(ServerFauilre(e.toString()));
    }
  }
}
