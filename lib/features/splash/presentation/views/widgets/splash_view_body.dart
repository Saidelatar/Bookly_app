import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding1_Text.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding2_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliding1Animation;
  late Animation<Offset> sliding2Animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Sliding1Animation(sliding1Animation: sliding1Animation),
        ),
        const SizedBox(
          height: 15,
        ),
        Sliding2Animation(slidingAnimation: sliding2Animation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    sliding1Animation = Tween<Offset>(
      begin: const Offset(2, 0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();

    sliding2Animation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(AppRoutes.kHomeView);
    });
  }
}
