import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {super.key,
      this.onPressed,
      this.icon,
      this.backgroundColor,
      this.colorIcon,
      this.heroTah});
  final void Function()? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? colorIcon;
  final Object? heroTah;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: FloatingActionButton(
        heroTag: heroTah,
        backgroundColor: backgroundColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Icon(icon, color: colorIcon, size: 30),
      ),
    );
  }
}
