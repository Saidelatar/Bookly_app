import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;

  SearchRepoImp({required this.apiService});
  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchSearchedBooks(
      {required String query}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=$query');

      List<BooksModel> books = [];

      for (var item in data["items"]) {
        try {
          books.add(BooksModel.fromJson(item));
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
}
