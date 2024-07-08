import 'package:flutter/material.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomDropdownFormField extends StatefulWidget {
  const CustomDropdownFormField({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownFormFieldState createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? selectedValue;

  final List<String> options = ['junior', 'Mid-Level 2', 'Senior', "Expert"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      isExpanded: true,
      hint: Text(
        textAlign: TextAlign.center,
        'Choose experience Level',
        style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w500),
      ),
      icon: const Icon(Icons.arrow_drop_down_rounded),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Color(0xff7F7F7F)),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
