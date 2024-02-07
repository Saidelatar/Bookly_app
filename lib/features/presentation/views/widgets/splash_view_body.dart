import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'The mind needs books like the stomach needs food',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
