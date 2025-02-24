import 'package:get/get.dart';
import 'package:todo/app/modules/home/controllers/home_controller.dart';

class AddTaskController extends GetxController {
  //TODO: Implement AddTaskController

  final HomeController homeController = Get.find();

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
    homeController.isSelected(false);
    super.onClose();
  }

  void increment() => count.value++;
}
