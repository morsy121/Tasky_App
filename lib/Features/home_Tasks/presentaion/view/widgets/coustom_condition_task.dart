import 'package:flutter/material.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomConditionTask extends StatelessWidget {
  const CustomConditionTask({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: const Color(0xffFFE4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(text!,
              style: Styles.textstyle12.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xffFF7D53),
              )),
        ),
      ),
    );
  }
}
