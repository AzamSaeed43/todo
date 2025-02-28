import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

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

  final List<String> images = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
    'assets/images/slide4.jpg',
    'assets/images/slide5.jpg',
    'assets/images/slide6.jpg',
  ];

  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
}
