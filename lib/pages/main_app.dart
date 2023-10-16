import 'package:flutter/material.dart';
import 'package:testapp/components/custom_button.dart';
import 'package:flutter/foundation.dart';
import 'dart:math';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  var activeDice = 2;
  final _random = Random();

  void onPressed() {
    int min = 1;
    int max = 6;
    var random = min + _random.nextInt(max - min);
    setState(() {

      activeDice = random;
    });
    if (kDebugMode) {
      print('Hello');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$activeDice.png',
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ), // to give margin
          CustomButton(
            'Roll the Dice',
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(20),
                textStyle: const TextStyle(fontSize: 28)),
            onClick: onPressed,
          )
        ],
      ),
    );
  }
}
