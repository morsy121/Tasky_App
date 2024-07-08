import 'package:flutter/material.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({super.key, this.text, this.color});
  final String? text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: Styles.textstyle24.copyWith(
        color: color,
      ),
    );
  }
}


