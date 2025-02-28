import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskDetailsController extends GetxController with GetTickerProviderStateMixin {
  //TODO: Implement TaskDetailsController
  RxInt index = 0.obs;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  init(){
    if(Get.arguments != null && Get.arguments[1].runtimeType == int){
      index(Get.arguments[1]);
    }
  }

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  RxBool selected = false.obs;
  RxBool first = false.obs;

  RxDouble rotationY = 0.00.obs;

}
