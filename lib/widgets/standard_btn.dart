import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardButton extends StatelessWidget {
  const StandardButton(this.text,
      {super.key,
      required this.onPressed,
      required this.color,
      this.height = 45,
      this.width = 190});

  final String text;
  final void Function() onPressed;
  final Color color;
  final num height;
  final num width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.toDouble(),
      height: height.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.signika(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
