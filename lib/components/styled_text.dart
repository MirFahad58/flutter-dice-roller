import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.data, {super.key, this.style});
  final String data;
  final TextStyle? style;
  final TextStyle preStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal
  );

  @override
  Widget build(BuildContext context){
    TextStyle effectiveTextStyle = preStyle;
    if (style != null && style!.inherit) {
      effectiveTextStyle = preStyle.merge(style);
    }
    return  Text(
      data,
      style: effectiveTextStyle,
    );
  }

}
