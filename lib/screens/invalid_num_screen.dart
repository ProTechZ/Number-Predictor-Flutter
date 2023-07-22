import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/widgets/standard_btn.dart';

class InvalidNumberScreen extends StatelessWidget {
  const InvalidNumberScreen({
    super.key,
    required this.onPlayAgain,
    required this.onHome,
  });

  final void Function() onPlayAgain;
  final void Function() onHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hmmmmm...',
            style: GoogleFonts.signika(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Are you sure you chose a number from 1 to 30?',
            style: GoogleFonts.signika(
              fontSize: 50,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'Just kidding. We know you didn\'t. Nice try.',
            style: GoogleFonts.signika(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          StandardButton(
            'Play Again',
            onPressed: onPlayAgain,
            color: violet,
            width: 190,
            height: 50,
          ),
          const SizedBox(height: 10),
          StandardButton(
            'Home',
            onPressed: onHome,
            color: gray,
            width: 190,
            height: 50,
          ),
        ],
      ),
    );
  }
}
