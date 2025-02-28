import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement OnBoardingController

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

  PageController pageController = PageController();
  RxInt currentPage = 0.obs;

  final List<Map<String, String>> pages = [
    {"image": "https://cdn.pixabay.com/photo/2024/01/31/19/25/sunset-8544672_1280.jpg", "text": "Welcome to Our App!"},
    {"image": "https://cdn.pixabay.com/photo/2024/01/31/19/25/sunset-8544672_1280.jpg", "text": "Discover New Features"},
    {"image": "https://cdn.pixabay.com/photo/2024/01/31/19/25/sunset-8544672_1280.jpg", "text": "Start Using Now!"},
  ];


}
