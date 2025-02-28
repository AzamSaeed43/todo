import 'package:get/get.dart';
import 'package:todo/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:todo/app/modules/profile_view/controllers/profile_view_controller.dart';
import 'package:todo/app/modules/task_view/controllers/task_view_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.put(TaskViewController());
    Get.put(ProfileViewController());
    Get.put(DashboardController());
  }
}
