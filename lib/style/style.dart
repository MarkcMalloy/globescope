import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight weight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText(
      {Key? key,
      required this.text,
      this.weight: FontWeight.w400,
      this.color: AppColors.primary,
      this.size: 20,
      this.height: 1.3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          color: color,
          height: height,
          fontSize: size,
          fontWeight: weight),
    );
  }
}
