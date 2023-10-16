import 'package:flutter/material.dart';
import 'package:testapp/components/styled_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.buttonText,
      {super.key, this.style, required this.onClick});

  final String buttonText;
  final ButtonStyle? style;
  final ButtonStyle preStyle = const ButtonStyle(
    enableFeedback: false,
  );
  final VoidCallback onClick;

  void onPressed() {
    onClick();
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveStyle = preStyle;
    if (style != null) {
      effectiveStyle = preStyle.merge(style);
    }
    return TextButton(
        onPressed: onPressed, style: effectiveStyle, child: Text(buttonText));
  }
}
