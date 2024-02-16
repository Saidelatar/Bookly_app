import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fauilre, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Fauilre, List<BooksModel>>> fetchFeaturedBooks();
}
