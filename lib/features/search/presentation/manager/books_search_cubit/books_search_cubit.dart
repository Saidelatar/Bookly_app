import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'books_search_state.dart';

class BooksSearchCubit extends Cubit<BooksSearchState> {
  BooksSearchCubit(this.searchRepo) : super(BooksSearchInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String query}) async {
    emit(BooksSearchLoading());
    var result = await searchRepo.fetchSearchedBooks(query: query);

    result.fold(
        (fauilre) => {
              emit(BooksSearchFauilre(fauilre.errorMessage)),
            },
        (books) => {emit(BooksSearchSuccess(books))});
  }
}
