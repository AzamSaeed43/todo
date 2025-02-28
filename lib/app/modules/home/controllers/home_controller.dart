import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/modules/dashboard/views/dashboard_view.dart';
import 'package:todo/app/modules/profile_view/views/profile_view_view.dart';
import 'package:todo/app/modules/task_view/views/task_view_view.dart';
import 'package:todo/app/routes/app_pages.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin{
  //TODO: Implement HomeController

  final PageController pageController = PageController();

  List<Widget> pages = const [
    DashboardView(),
    TaskViewView(),
    ProfileViewView()
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.task_alt,
    Icons.person
  ];

  final List<String> iconLabel = [
    "Home",
    "Tasks",
    "Person"
  ];

  // 2nd Animated Align
  RxBool isSelected = false.obs;
  Duration duration = const Duration(seconds: 1);
  Curve curve = Curves.fastOutSlowIn;

  void moveToAddTask() {
    isSelected.value = !isSelected.value;
    Future.delayed(const Duration(seconds: 1),()=> Get.toNamed(Routes.ADD_TASK));
  }

  RxInt selectedIndex = 0.obs;

  void onItemTap(int index){
    selectedIndex(index);
    pageController.animateToPage(selectedIndex.value, duration: const Duration(seconds: 1), curve: Curves.decelerate);
  }
}
