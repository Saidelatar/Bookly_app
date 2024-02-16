import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Fauilre, List<BooksModel>>> ferchBestSellerBooks() {
    // TODO: implement ferchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Fauilre, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
