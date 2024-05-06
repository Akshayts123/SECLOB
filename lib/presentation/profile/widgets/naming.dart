import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Naming extends StatelessWidget {
  const Naming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Text(
          "Rayan Moon",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Photographer",
          style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 180,
          child: Text(
            "🌟 You are beautiful, and I'm here to capture it! 🌟",
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
