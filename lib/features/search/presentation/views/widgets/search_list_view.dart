import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manager/books_search_cubit/books_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksSearchCubit, BooksSearchState>(
      builder: (context, state) {
        if (state is BooksSearchSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksListViewItem(booksModel: state.books[index]),
                );
              });
        } else if (state is BooksSearchFauilre) {
          return const Center(child: Text('There is no Books , Search again'));
        } else if (state is BooksSearchLoading) {
          return const CustomLoadingIndicator();
        }
        return const Center(child: Text('Start Search'));
      },
    );
  }
}
