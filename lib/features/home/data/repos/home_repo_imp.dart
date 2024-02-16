import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Fauilre, List<BooksModel>>> ferchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BooksModel> books = [];

      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFauilre());
    }
  }

  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchNewestBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}