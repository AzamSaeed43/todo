import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final List<String> images = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
    'assets/images/slide4.jpg',
    'assets/images/slide5.jpg',
    'assets/images/slide6.jpg',
  ];

  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
}
