import 'package:get/get.dart';
import 'package:todo/app/modules/home/controllers/home_controller.dart';
import 'package:todo/app/modules/profile_view/controllers/profile_view_controller.dart';
import 'package:todo/app/modules/task_view/controllers/task_view_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.put(HomeController());
    Get.put(TaskViewController());
    Get.put(ProfileViewController());
  }
}
