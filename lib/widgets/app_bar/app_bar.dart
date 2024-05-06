import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob/data/apiClient/assets_url.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300, shape: BoxShape.circle),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(3),
          child: SvgPicture.asset(assets_url + "back.svg"),
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300, shape: BoxShape.circle),
          padding: EdgeInsets.all(17),
          margin: EdgeInsets.only(right: 10),
          child: SvgPicture.asset(assets_url + "dots.svg"),
        ),
      ],
    );
  }
}
