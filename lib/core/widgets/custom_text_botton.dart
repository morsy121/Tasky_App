import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton(
      {super.key,
      this.title,
      this.icon,
      this.backgroundColor,
      this.height,
      this.onPressed});
  final String? title;
  final IconData? icon;
  final Color? backgroundColor;
  final double? height;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!,
      width: double.infinity,
      child: ElevatedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title!,
                  style: Styles.textstyle19.copyWith(color: Colors.white)),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
