import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SafeArea(child: CustomBooksDetailsAppBar()),
        ],
      ),
    );
  }
}
