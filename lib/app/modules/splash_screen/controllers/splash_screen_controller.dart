import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    init();
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

  init() async {
    await Future.delayed(const Duration(seconds: 5),(){
      moveToHome();
    });
  }

  void moveToHome(){
    Get.toNamed(Routes.HOME);
  }
}
