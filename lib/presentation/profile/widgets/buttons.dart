import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/apiClient/assets_url.dart';
import '../../../widgets/button/button_custom.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          color: Color(0Xff184AC0),
          height: 44,
          onPressed: () {
          },
          child: Text(
            'Edit profile',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
        SizedBox(width: 8),
        CustomButton(
          color: Color(0Xff28426B),
          height: 44,
          onPressed: () {
          },
          child: Text(
            'Wallet',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 50,
          height: 44,
          decoration: BoxDecoration(
            color: Color(0Xff184AC0B5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF184AC0).withOpacity(0.6),
              shadowColor: Color(0XFF184AC0),
              surfaceTintColor: Color(0XFF184AC0),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
            },
            child: Center(
              child: SvgPicture.asset(assets_url + "phone.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
