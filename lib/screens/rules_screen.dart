import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({
    super.key,
    required this.onFinished,
  });

  final void Function() onFinished;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It\'s pretty simple.',
                style: GoogleFonts.signika(
                  fontSize: 40,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '1. Think of a number from 1 to 30.',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '2. Remember this number.',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '3. You will be shown 5 slides.',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '4. on each slide,  YES if your number is there, or NO if it is not.',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '5. At the end of the five slides, your number will be magically guessed.',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ], shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundColor: violet,
              child: IconButton(
                icon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onPressed: onFinished,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
