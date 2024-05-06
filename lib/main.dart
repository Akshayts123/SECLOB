import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:seclob/presentation/profile/binding/profile_binding.dart';
import 'package:seclob/routes/app_pages.dart';
import 'package:seclob/routes/app_routes.dart';
import 'data/controllers/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ProfileBinding(),
      theme: themeController.currentTheme.value,
      title: 'Seclob Test',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.routes,
      initialRoute: Routes.DASH,
    );
  }
}
