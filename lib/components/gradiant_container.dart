import 'package:flutter/material.dart';

class GradiantContainer extends StatelessWidget {
  // this is a constructor
  const GradiantContainer({
    super.key,
    required this.child,
    this.gradiantColorOne,
    this.gradiantColorTwo,
  });

  // in a class there can be a multiple constructor to use them eg: GradiantContainer.purple();
  const GradiantContainer.purple({super.key, required this.child})
      : gradiantColorOne = Colors.deepPurple,
        gradiantColorTwo = Colors.indigo;

  final Widget? child;
  final Color? gradiantColorOne;
  final Color? gradiantColorTwo;

  @override
  Widget build(BuildContext context) {
    Color? newGradiantColorOne = gradiantColorOne;
    Color? newGradiantColorTwo = gradiantColorTwo;
    newGradiantColorOne ??= Colors.blue;
    newGradiantColorTwo ??= Colors.deepPurple;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [newGradiantColorOne, newGradiantColorTwo],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: child,
    );
  }
}
