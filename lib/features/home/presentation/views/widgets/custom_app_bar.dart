import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 30),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            child: SvgPicture.asset(
              AssetsData.searchSvg,
              height: 22,
              width: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
