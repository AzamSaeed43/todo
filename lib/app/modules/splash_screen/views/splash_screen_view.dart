import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/data/app_constant.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColoredBox(
      color: Colors.white,
      child: AlignTransition(
        alignment: controller.animation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(ImagesPath.logo),
        ),
      ),
    ));
  }
}
