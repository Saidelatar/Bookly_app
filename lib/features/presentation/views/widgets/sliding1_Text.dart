import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Sliding1Animation extends StatelessWidget {
  const Sliding1Animation({
    super.key,
    required this.sliding1Animation,
  });

  final Animation<Offset> sliding1Animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliding1Animation,
      builder: (context, child) {
        return SlideTransition(
            position: sliding1Animation, child: Image.asset(AssetsData.logo));
      },
    );
  }
}
