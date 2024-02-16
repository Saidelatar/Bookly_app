part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFauilre extends NewestBooksState {
  final String errorMessage;
  const NewestBooksFauilre(this.errorMessage);
}

final class NewestBooksSueccess extends NewestBooksState {
  final List<BooksModel> books;
  const NewestBooksSueccess(this.books);
}
