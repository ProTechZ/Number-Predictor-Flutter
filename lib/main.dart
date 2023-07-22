import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_predictor/data/colors.dart';
import 'package:number_predictor/screens/all_play_screens.dart';
import 'package:number_predictor/screens/home_screen.dart';
import 'package:number_predictor/screens/invalid_num_screen.dart';
import 'package:number_predictor/screens/pre_play_screen.dart';
import 'package:number_predictor/screens/results_screen.dart';
import 'package:number_predictor/screens/rules_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var screen = 'home';
  List<int> yesNumbers = [];

  int get guessedNumber {
    return yesNumbers.isEmpty ? 0 : yesNumbers.reduce((a, b) => a + b);
  }

  void changeScreen(String newScreen) {
    setState(() {
      screen = newScreen;
    });
  }

  void addToYesNumbers(int number) {
    setState(() {
      yesNumbers.add(number);
    });
  }

  void removeFromYesNumbers(int number) {
    setState(() {
      yesNumbers.remove(number);
    });
  }

  Widget get currentScreen {
    if (screen == 'home') {
      return HomeScreen(
          onPlay: () => changeScreen('preplay'),
          onRules: () => changeScreen('rules'));
    } else if (screen == 'preplay') {
      return PrePlayScreen(
        onBack: () => changeScreen('home'),
        onPlay: () => changeScreen('firstslide'),
      );
    } else if (screen == 'rules') {
      return RulesScreen(
        onFinished: () => changeScreen('home'),
      );
    } else if (screen == 'firstslide') {
      return FirstSlideScreen(
          onYes: () {
            addToYesNumbers(1);
            changeScreen('secondslide');
          },
          onNo: () => changeScreen('secondslide'),
          onBack: () => changeScreen('preplay'));
    } else if (screen == 'secondslide') {
      return SecondSlideScreen(
          onYes: () {
            addToYesNumbers(2);
            changeScreen('thirdslide');
          },
          onNo: () => changeScreen('thirdslide'),
          onBack: () {
            removeFromYesNumbers(1);
            changeScreen('firstslide');
          });
    } else if (screen == 'thirdslide') {
      return ThirdSlidescreen(
          onYes: () {
            addToYesNumbers(4);
            changeScreen('fourthslide');
          },
          onNo: () => changeScreen('fourthslide'),
          onBack: () {
            removeFromYesNumbers(2);
            changeScreen('secondslide');
          });
    } else if (screen == 'fourthslide') {
      return FourthSlideScreen(
          onYes: () {
            addToYesNumbers(8);
            changeScreen('fifthslide');
          },
          onNo: () => changeScreen('fifthslide'),
          onBack: () {
            removeFromYesNumbers(4);
            changeScreen('thirdslide');
          });
    } else if (screen == 'fifthslide') {
      return FifthSlideScreen(
          onYes: () {
            addToYesNumbers(16);
            changeScreen((guessedNumber > 30 || guessedNumber < 1)
                ? 'invalidnum'
                : 'results');
          },
          onNo: () => changeScreen((guessedNumber > 30 || guessedNumber < 1)
              ? 'invalidnum'
              : 'results'),
          onBack: () {
            removeFromYesNumbers(8);
            changeScreen('fourthslide');
          });
    } else if (screen == 'results') {
      return ResultsScreen(
        onHome: () {
          changeScreen('home');
          yesNumbers = [];
        },
        onPlayAgain: () {
          changeScreen('preplay');
          yesNumbers = [];
        },
        guessedNum: guessedNumber,
      );
    } else if (screen == 'invalidnum') {
      return InvalidNumberScreen(
        onHome: () {
          changeScreen('home');
          yesNumbers = [];
        },
        onPlayAgain: () {
          changeScreen('preplay');
          yesNumbers = [];
        },
      );
    } else {
      return const Text('hi');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.signikaTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        backgroundColor: lemon,
        body: Center(
          child: currentScreen,
        ),
      ),
    );
  }
}

//number item/playbtn/circletick/letsgobtn/playagain = #881ee7 = violet
//yes/no/rulesbtn/home = #565445 = gray
//background = #ffeb3c = lemon
