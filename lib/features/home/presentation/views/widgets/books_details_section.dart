import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/feature_books_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: const FeaturedBooksImage(
            imageUrl:
                'https://www.bing.com/ck/a?!&&p=23b3bc71990779ceJmltdHM9MTcwODIxNDQwMCZpZ3VpZD0xMjQ3Mjk0YS0xNWEzLTYzZGUtM2U4ZS0zYTlkMTRkNDYyYzMmaW5zaWQ9NTY2MA&ptn=3&ver=2&hsh=3&fclid=1247294a-15a3-63de-3e8e-3a9d14d462c3&u=a1L2ltYWdlcy9zZWFyY2g_cT1ib29rcyBpbWFnZXMgYysrJkZPUk09SVFGUkJBJmlkPTlBMzJDMTFEOUIzMzlEOUI3MUVGMTZGNTIxOUQwNzc4MTlFMTYyNjI&ntb=1',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
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
            'Rudyard Klipping',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BooksRating(
          rating: 5,
          count: 5,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 10,
        ),
        const ButtonAction(),
      ],
    );
  }
}
