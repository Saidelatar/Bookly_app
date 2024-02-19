import 'package:bookly_app/core/utils/errors/fauilre.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Fauilre, List<BooksModel>>> fetchSearchedBooks(
      {required String query});
}
