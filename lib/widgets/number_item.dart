import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';

class NumberItem extends StatelessWidget {
  const NumberItem(
    this.number, {
    super.key,
    this.size = 70,
  });

  final num number;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: size.toDouble(),
      height: size.toDouble(),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: violet,
        shape: BoxShape.circle,
      ),
      child: Text(
        number.toString(),
        style: GoogleFonts.signika(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
      ),
    );
  }
}
