import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_details_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/feature_books_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SafeArea(child: CustomBooksDetailsAppBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.19),
            child: const FeaturedBooksImage(),
          ),
        ],
      ),
    );
  }
}
