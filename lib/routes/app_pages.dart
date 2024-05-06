import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:seclob/presentation/dashboard/binding/dashboard_binding.dart';
import 'package:seclob/presentation/dashboard/dashboard.dart';
import 'package:seclob/presentation/profile/profile.dart';
import '../presentation/profile/binding/profile_binding.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASH;

  static final routes = [
    GetPage(
      name: Paths.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Paths.DASH,
      page: () => Dashboard(),
      binding: DashboardBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
