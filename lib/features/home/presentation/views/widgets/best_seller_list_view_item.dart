import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
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
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'Harry Potter and The Goblet Of Fire',
                style: Styles.textStyle20.copyWith(
                  fontFamily: kGtSectraFine,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'J.K.Rowling',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  r'19.99 £',
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
