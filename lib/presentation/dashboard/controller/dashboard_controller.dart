

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seclob/presentation/profile/profile.dart';
import '../../../data/apiClient/assets_url.dart';
import '../../../data/controllers/media_controller.dart';

class DashboardController extends GetxController {
  final RxInt currentIndex = 4.obs;
  final mediaController = Get.put(MediaController());
  final List icons = [
    SvgPicture.asset(assets_url + "home.svg"),
    SvgPicture.asset(assets_url + "search.svg"),
    SvgPicture.asset(assets_url + "camera.svg"),
    SvgPicture.asset(assets_url + "reels.svg"),
    Image.asset(assets_url + "profile1.png"),
  ];
  final List<Widget> pages = [
    Container(),
    Container(),
    Container(),
    Container(),
    ProfileScreen(),
  ];
}