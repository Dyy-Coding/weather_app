import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/binding/home_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
