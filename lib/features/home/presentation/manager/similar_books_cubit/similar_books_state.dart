part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  List<BooksModel> books;
  SimilarBooksSuccess(this.books);
}

final class SimilarBooksFauilre extends SimilarBooksState {
  final String errorMessage;
  SimilarBooksFauilre(this.errorMessage);
}
