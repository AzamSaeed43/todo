import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

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

  List<GlobalKey> myItemKey = List.generate(10, (index) => GlobalKey());

  List<Map<String,dynamic>> todo_list = [{'task_name':'First Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'2nd Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'3rd Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'4th Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'5th Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'6th Task of Day','task_status':'Pending','task_date':'20-2-2025'},
    {'task_name':'7th Task of Day','task_status':'Pending','task_date':'20-2-2025'}];

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home),
    label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.person),
    label: 'Profile'),
  ];

  void moveToDetails(GlobalKey key) {
    RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    Offset position = renderBox.localToGlobal(Offset.zero); // Get item position

    Get.toNamed(Routes.TASK_DETAILS, arguments: position);
  }

  // 2nd Animated Align
  RxBool isSelected = false.obs;
  Duration duration = const Duration(seconds: 1);
  Curve curve = Curves.fastOutSlowIn;

  void moveToAddTask() {
    isSelected.value = !isSelected.value;
    Future.delayed(const Duration(seconds: 1),()=> Get.toNamed(Routes.ADD_TASK));
  }

  RxList<bool> selected = List.filled(7, true).obs;
}
