import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seclob/presentation/profile/controller/profile_controller.dart';

class TabBarWidget extends StatelessWidget {
  final _tabController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 0.3),
          ),
        ],
      ),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () => _tabController.changeTabIndex(0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    'Photos',
                    style: GoogleFonts.poppins(
                      color: _tabController.selectedIndex.value == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      fontWeight: _tabController.selectedIndex.value == 0
                          ? FontWeight.w500
                          : null,
                    ),
                  ),
                ),
              ),
              Container(height: 20, width: 1, color: Colors.grey),
              GestureDetector(
                onTap: () => _tabController.changeTabIndex(1),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    'Videos',
                    style: GoogleFonts.poppins(
                      color: _tabController.selectedIndex.value == 1
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      fontWeight: _tabController.selectedIndex.value == 1
                          ? FontWeight.w500
                          : null,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
