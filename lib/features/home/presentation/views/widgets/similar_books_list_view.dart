import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/feature_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: FeaturedBooksImage(
                      imageUrl:
                          'https://www.bing.com/ck/a?!&&p=23b3bc71990779ceJmltdHM9MTcwODIxNDQwMCZpZ3VpZD0xMjQ3Mjk0YS0xNWEzLTYzZGUtM2U4ZS0zYTlkMTRkNDYyYzMmaW5zaWQ9NTY2MA&ptn=3&ver=2&hsh=3&fclid=1247294a-15a3-63de-3e8e-3a9d14d462c3&u=a1L2ltYWdlcy9zZWFyY2g_cT1ib29rcyBpbWFnZXMgYysrJkZPUk09SVFGUkJBJmlkPTlBMzJDMTFEOUIzMzlEOUI3MUVGMTZGNTIxOUQwNzc4MTlFMTYyNjI&ntb=1',
                    ),
                  );
                });
          } else if (state is SimilarBooksFauilre) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
