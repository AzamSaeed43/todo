import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: Get.height / 3,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              viewportFraction: 0.8,
              scrollDirection: Axis.horizontal,
            ),
            items: controller.images.map((path) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
              child: ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  final item = controller.items[index];

                  return Dismissible(
                    key: Key(item),
                    direction: DismissDirection.horizontal,
                    // Swipe left or right
                    background: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        alignment: Alignment.centerLeft,
                        duration: const Duration(seconds: 2),
                        curve: Curves.fastEaseInToSlowEaseOut,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: const Icon(Icons.delete,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    secondaryBackground: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        alignment: Alignment.centerRight,
                        duration: const Duration(seconds: 2),
                        curve: Curves.fastEaseInToSlowEaseOut,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: const Icon(Icons.delete,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    onDismissed: (direction) {
                      controller.items.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$item deleted'),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          height: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          duration: const Duration(seconds: 2),
                          curve: Curves.fastEaseInToSlowEaseOut,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Hero(
                                      tag: 'hero_tag_$index',
                                      child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              'assets/images/person.png')),
                                    ),
                                    Text(
                                      item,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
