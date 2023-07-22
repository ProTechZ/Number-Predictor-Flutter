import 'package:flutter/material.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/widgets/number_item.dart';
import 'package:number_predictor/widgets/standard_btn.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onPlayAgain,
    required this.onHome,
    required this.guessedNum,
  });

  final void Function() onPlayAgain;
  final void Function() onHome;
  final int guessedNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberItem(guessedNum, size: 80),
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
    );
  }
}
