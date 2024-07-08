import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          text!,
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
