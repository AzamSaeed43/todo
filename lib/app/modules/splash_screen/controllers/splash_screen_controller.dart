import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class SplashScreenController extends GetxController with GetTickerProviderStateMixin {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    init();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    _controller.dispose();
  }

  void increment() => count.value++;

  init() async {
    await Future.delayed(const Duration(seconds: 5),(){
      moveToHome();
    });
  }

  void moveToHome(){
    Get.toNamed(Routes.HOME);
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
