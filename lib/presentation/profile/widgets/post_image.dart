import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/apiClient/assets_url.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(assets_url + "profile-picture.png"),
        Column(
          children: [
            Text(
              "50",
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              "Post",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "564",
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              "Followers",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "564",
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              "Following",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor),
            )
          ],
        )
      ],
    );
  }
}
