import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.size,
    required this.text,
    this.color,
  });

  final double size;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size * 0.23,
      height: size * 0.11,
      padding: EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: size * 0.040,
            color: color != null ? Colors.white : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
