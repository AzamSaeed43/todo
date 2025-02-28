import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo/app/modules/on_boarding/views/widget/on_boarding_page.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            itemCount: controller.pages.length,
            onPageChanged: (index) {
              //setState(() {
              controller.currentPage.value = index;
              // });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                imageUrl: controller.pages[index]["image"]!,
                text: controller.pages[index]["text"]!,
                isActive: index == controller.currentPage.value,
                index: index,
              );
            },
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.pages.length,
                    (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: controller.currentPage.value == index ? 20 : 10,
                  decoration: BoxDecoration(
                    color: controller.currentPage.value == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

