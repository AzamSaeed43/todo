import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskDetailsController extends GetxController with GetTickerProviderStateMixin {
  //TODO: Implement TaskDetailsController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  RxBool selected = false.obs;
  RxBool first = false.obs;

}
