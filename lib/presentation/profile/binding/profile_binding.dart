import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:seclob/presentation/profile/controller/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() async {
    Get.put(ProfileController());
  }
}