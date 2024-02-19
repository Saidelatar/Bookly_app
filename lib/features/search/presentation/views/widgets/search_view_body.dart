import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/manager/books_search_cubit/books_search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onChanged: (query) {
              BlocProvider.of<BooksSearchCubit>(context)
                  .fetchSearchedBooks(query: query);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
