import 'package:get/get.dart';

import '../controllers/task_view_controller.dart';

class TaskViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskViewController>(
      () => TaskViewController(),
    );
  }
}
