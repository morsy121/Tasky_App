import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.suffixIcon,
    this.initialValue,
    this.enabled,
    this.prefixIcon,
    this.onTap,
    this.validator,
    this.filled,
    this.fillcolor,
  });
  final String? hintText;
  final String? initialValue;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final IconButton? suffixIcon;
  final bool? enabled;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool? filled;
  final Color? fillcolor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      initialValue: initialValue,
      onTap: onTap,
      validator: validator,
      style: Theme.of(context).inputDecorationTheme.counterStyle,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillcolor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.grey)),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.grey)),
        prefixIcon: prefixIcon,
        hintText: hintText,
      ),
    );
  }
}
