import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/feature_books_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  final BooksModel booksModel;
  const BooksDetailsSection({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: FeaturedBooksImage(
            imageUrl: booksModel.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          booksModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            booksModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BooksRating(
          rating: booksModel.volumeInfo.averageRating ?? 4.5,
          count: booksModel.volumeInfo.ratingsCount ?? 254,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 10,
        ),
        ButtonAction(
          booksModel: booksModel,
        ),
      ],
    );
  }
}
