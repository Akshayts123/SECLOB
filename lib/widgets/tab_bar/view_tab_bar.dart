import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/presentation/profile/controller/profile_controller.dart';
import 'package:seclob/widgets/tab_bar/tab_bar.dart';
import '../../presentation/profile/widgets/api_images_list.dart';

class TabBarViewWidget extends StatelessWidget {
  final _tabController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBarWidget(),
        Obx(
          () => _tabController.selectedIndex.value == 0
              ? MediaPage()
              : VideosWidget(),
        ),
      ],
    );
  }
}

class VideosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
