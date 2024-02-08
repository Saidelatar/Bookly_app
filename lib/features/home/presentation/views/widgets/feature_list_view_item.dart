import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testimage),
          ),
        ),
      ),
    );
  }
}
