import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/Models/books_model/books_model.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  final BooksModel booksModel;
  const ButtonAction({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CustomButton(
            onPressed: () {},
            text: 'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            onPressed: () async {
              launchCustomUrl(context, "booksModel.volumeInfo.previewLink!");
            },
            text: getText(booksModel),
            textColor: Colors.white,
            backgroundColor: const Color(0xffef8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BooksModel booksModel) {
    if (booksModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'preview';
    }
  }
}
