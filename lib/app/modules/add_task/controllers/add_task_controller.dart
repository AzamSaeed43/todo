import 'package:get/get.dart';
import 'package:todo/app/modules/home/controllers/home_controller.dart';

class AddTaskController extends GetxController {
  //TODO: Implement AddTaskController
  final HomeController homeController = Get.find();

  @override
  void onClose() {
    homeController.isSelected(false);
    super.onClose();
  }
}
