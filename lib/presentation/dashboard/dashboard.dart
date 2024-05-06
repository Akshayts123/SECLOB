import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/presentation/dashboard/controller/dashboard_controller.dart';


class Dashboard extends StatelessWidget {
  final dashController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => dashController.pages[dashController.currentIndex.value]),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Material(
            type: MaterialType.transparency,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff1E2E5D),
              currentIndex: dashController.currentIndex.value,
              onTap: (index) => dashController.currentIndex.value = index,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: List.generate(
                dashController.icons.length,
                    (index) => BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: dashController.icons[index],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 3,
                        right: 3,
                        child: Obx(
                              () => Container(
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border(
                                bottom: BorderSide(
                                  color: dashController.currentIndex.value == index
                                      ? Colors.white
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
              ),
            ),
          ),
        ),
    );
  }
}


