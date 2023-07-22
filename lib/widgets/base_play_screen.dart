import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/widgets/number_item.dart';
import 'package:number_predictor/widgets/standard_btn.dart';

class BasePlayScreen extends StatelessWidget {
  const BasePlayScreen(
      {super.key,
      required this.title,
      required this.numbers,
      required this.onYes,
      required this.onNo,
      required this.onBack});

  final String title;
  final List<List<int>> numbers;
  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.signika(
            fontSize: 45,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 15),
        for (var i = 0; i < 5; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...numbers[i].map((number) => NumberItem(number))],
          ),
        const SizedBox(height: 30),
        Text(
          'Is your number on the screen?',
          style: GoogleFonts.signika(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StandardButton(
              'Yes',
              onPressed: onYes,
              color: gray,
              width: 110,
            ),
            const SizedBox(width: 10),
            StandardButton(
              'No',
              onPressed: onNo,
              color: gray,
              width: 110,
            ),
          ],
        ),
        const SizedBox(height: 20,),
        StandardButton(
          'Back',
          onPressed: onBack,
          color: violet,
          width: 100,
        ),
      ],
    );
  }
}
