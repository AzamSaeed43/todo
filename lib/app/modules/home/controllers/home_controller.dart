import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
}
