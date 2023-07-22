import 'package:flutter/material.dart';
import 'package:number_predictor/data/numbers.dart';
import 'package:number_predictor/widgets/base_play_screen.dart';

class FirstSlideScreen extends StatelessWidget {
  const FirstSlideScreen({
    super.key,
    required this.onYes,
    required this.onNo,
    required this.onBack,
  });

  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return BasePlayScreen(
      title: 'First Slide',
      numbers: firstSlideNumbers,
      onYes: onYes,
      onNo: onNo,
      onBack: onBack,
    );
  }
}

class SecondSlideScreen extends StatelessWidget {
  const SecondSlideScreen({
    super.key,
    required this.onYes,
    required this.onNo,
    required this.onBack,
  });

  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return BasePlayScreen(
      title: 'Second Slide',
      numbers: secondSlideNumbers,
      onYes: onYes,
      onNo: onNo,
      onBack: onBack,
    );
  }
}

class ThirdSlidescreen extends StatelessWidget {
  const ThirdSlidescreen({
    super.key,
    required this.onYes,
    required this.onNo,
    required this.onBack,
  });

  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return BasePlayScreen(
      title: 'Third Slide',
      numbers: thirdSlideNumbers,
      onYes: onYes,
      onNo: onNo,
      onBack: onBack,
    );
  }
}

class FourthSlideScreen extends StatelessWidget {
  const FourthSlideScreen({
    super.key,
    required this.onYes,
    required this.onNo,
    required this.onBack,
  });

  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return BasePlayScreen(
      title: 'Fourth Slide',
      numbers: fourthSlideNumbers,
      onYes: onYes,
      onNo: onNo,
      onBack: onBack,
    );
  }
}

class FifthSlideScreen extends StatelessWidget {
  const FifthSlideScreen({
    super.key,
    required this.onYes,
    required this.onNo,
    required this.onBack,
  });

  final void Function() onYes;
  final void Function() onNo;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    return BasePlayScreen(
      title: 'Fifth Slide',
      numbers: fifthSlideNumbers,
      onYes: onYes,
      onNo: onNo,
      onBack: onBack,
    );
  }
}
