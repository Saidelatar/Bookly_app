import 'package:bookly_app/features/home/presentation/views/widgets/books_details_view_boy.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BooksDetailsViewBody(),
    );
  }
}
