import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class SplashScreenController extends GetxController with GetTickerProviderStateMixin {
  //TODO: Implement SplashScreenController
@override
  void onInit() {
    super.onInit();
    init();
  }
  @override
  void onClose() {
    super.onClose();
    _controller.dispose();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 5),(){
      moveToOnBoarding();
    });
  }

  void moveToOnBoarding(){
    Get.toNamed(Routes.ON_BOARDING);
  }

  // First Align Transition
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomRight,
    end: Alignment.center,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
}
