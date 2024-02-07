import 'package:flutter/material.dart';

class Sliding2Animation extends StatelessWidget {
  const Sliding2Animation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'The mind needs books like the stomach needs food',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
