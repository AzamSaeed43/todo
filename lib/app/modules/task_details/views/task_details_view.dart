import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/task_details_controller.dart';
import 'dart:math' as math;

class TaskDetailsView extends GetView<TaskDetailsController> {
  const TaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TaskDetailsView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AnimatedBuilder(
            animation: controller.controller,
            child: Container(
              height: Get.height / 6,
              width: Get.width,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
              child: const Center(child: Text('Whee!')),
            ),
            builder: (BuildContext context, Widget? child) {
              return ListTile(
                title: Transform.rotate(
                    angle: controller.controller.value * 2.0 * math.pi,
                    child: child),
              );
            },
          ),
          AnimatedBuilder(
            animation: controller.controller,
            child: Container(
              height: Get.height / 6,
              width: Get.width,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
              child: const Center(child: Text('Whee!')),
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.flip(
                flipX: true,
                origin: const Offset(0, 0),
                child: child,
              );
            },
          ),
          AnimatedBuilder(
            animation: controller.controller,
            child: Container(
              height: Get.height / 6,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
              child: const Center(child: Text('Whee!')),
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.scale(
                scale: 1,
                child: child,
              );
            },
          ),
          AnimatedBuilder(
            animation: controller.controller,
            child: Container(
              height: Get.height / 6,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
              child: const Center(child: Text('Whee!')),
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset: const Offset(0.0, 15.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFF7F7F7F),
                  child: const Text('Quarter'),
                ),
              );
            },
          ),
          Obx(() => InkWell(
            onTap: (){
              controller.first.value = !controller.first.value;
            },
            child: AnimatedCrossFade(
              duration: const Duration(seconds: 3),
              firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/todo_logo.png")),
              crossFadeState: controller.first.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ))
        ],
      ),
    );
  }
}
