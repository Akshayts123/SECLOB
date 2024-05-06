import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seclob/presentation/profile/widgets/buttons.dart';
import 'package:seclob/presentation/profile/widgets/naming.dart';
import 'package:seclob/presentation/profile/widgets/post_image.dart';
import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/tab_bar/view_tab_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostImage(),
                  Naming(),
                  RowButtons(),
                ],
              ),
            ),
            TabBarViewWidget()
          ],
        ),
      ),
    );
  }
}
