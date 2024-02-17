import 'package:bookly_app/features/home/presentation/views/widgets/feature_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: FeaturedBooksImage(
                imageUrl:
                    'https://www.bing.com/ck/a?!&&p=173845b18d9103a8JmltdHM9MTcwODEyODAwMCZpZ3VpZD0xMjQ3Mjk0YS0xNWEzLTYzZGUtM2U4ZS0zYTlkMTRkNDYyYzMmaW5zaWQ9NTYxMw&ptn=3&ver=2&hsh=3&fclid=1247294a-15a3-63de-3e8e-3a9d14d462c3&u=a1L2ltYWdlcy9zZWFyY2g_cT1kYXJ0IGJvb2sgaW1hZ2UmRk9STT1JUUZSQkEmaWQ9QzMyNTMwQjc1MEMyQkFBMTJEM0I5MTc2N0Y1RURCQjdCMjI2QUU5Nw&ntb=1',
              ),
            );
          }),
    );
  }
}
