import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomIntlPhoneField extends StatelessWidget {
  const CustomIntlPhoneField(
      {super.key, this.keyboardType, this.onChanged, this.controller});
  final TextInputType? keyboardType;
  final Function(PhoneNumber)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
        keyboardType: keyboardType!,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1, color: Colors.grey)),
        ),
        initialCountryCode: 'en',
        onChanged: onChanged);
  }
}
