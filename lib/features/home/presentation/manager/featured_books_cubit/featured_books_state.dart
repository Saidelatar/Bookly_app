part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksSuccessed extends FeaturedBooksState {
  final List<BooksModel> books;
  const FeaturedBooksSuccessed(this.books);
}

final class FeaturedBooksFauilre extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFauilre(this.errorMessage);
}
