import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/widgets/standard_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onPlay,
    required this.onRules,
  });

  final void Function() onPlay;
  final void Function() onRules;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Number Predictor',
          textAlign: TextAlign.center,
          style: GoogleFonts.signika(
            fontSize: 60,
            letterSpacing: 2,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Text(
          'PROTECHZ.',
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 40),
        StandardButton(
          'Play',
          onPressed: onPlay,
          color: violet,
        ),
        const SizedBox(height: 8),
        StandardButton(
          'Rules',
          onPressed: onRules,
          color: gray,
        ),
      ],
    );
  }
}
