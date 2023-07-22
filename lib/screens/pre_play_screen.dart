import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/widgets/standard_btn.dart';

class PrePlayScreen extends StatelessWidget {
  const PrePlayScreen({
    super.key,
    required this.onPlay,
    required this.onBack,
  });

  final void Function() onPlay;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Think of a number from 1 to 30', //milksahek
            style: GoogleFonts.signika(
              fontWeight: FontWeight.w900,
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          StandardButton(
            'Let\'s Go',
            onPressed: onPlay,
            color: violet,
          ),
          const SizedBox(height: 8),
          StandardButton(
            'Back',
            onPressed: onBack,
            color: gray,
          )
        ],
      ),
    );
  }
}
