import 'package:get/get.dart';

import '../data/custom_transition.dart';
import '../modules/add_task/bindings/add_task_binding.dart';
import '../modules/add_task/views/add_task_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/on_boarding/bindings/on_boarding_binding.dart';
import '../modules/on_boarding/views/on_boarding_view.dart';
import '../modules/profile_view/bindings/profile_view_binding.dart';
import '../modules/profile_view/views/profile_view_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/task_details/bindings/task_details_binding.dart';
import '../modules/task_details/views/task_details_view.dart';
import '../modules/task_view/bindings/task_view_binding.dart';
import '../modules/task_view/views/task_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        transition: Transition.noTransition,
        customTransition: CustomSlideTransition(),
        transitionDuration: const Duration(seconds: 2)),
    GetPage(
        name: _Paths.SPLASH_SCREEN,
        page: () => const SplashScreenView(),
        binding: SplashScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
      name: _Paths.TASK_DETAILS,
      page: () => const TaskDetailsView(),
      binding: TaskDetailsBinding(),
      transition: Transition.noTransition,
      // customTransition: CustomZoomTransition(),
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: _Paths.ADD_TASK,
      page: () => const AddTaskView(),
      binding: AddTaskBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
      transition: Transition.noTransition,
      customTransition: CustomSlideTransition(),
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: _Paths.PROFILE_VIEW,
      page: () => const ProfileViewView(),
      binding: ProfileViewBinding(),
    ),
    GetPage(
      name: _Paths.TASK_VIEW,
      page: () => const TaskViewView(),
      binding: TaskViewBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
