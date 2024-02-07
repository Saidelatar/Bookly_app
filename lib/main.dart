import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kprimaryColor),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
