import 'package:flutter/material.dart';
import 'package:taskyapp/core/utils/styles.dart';

// ignore: must_be_immutable
class CustomDropdownFormFieldPrioirty extends StatefulWidget {
  CustomDropdownFormFieldPrioirty(
      {super.key,
      this.selectedValue,
      this.items,
      this.text,
      this.value,
      this.prefixicon});
  String? selectedValue;
  final List<DropdownMenuItem<String>>? items;
  final String? text;
  final String? value;
  final Widget? prefixicon;
  @override
  State<CustomDropdownFormFieldPrioirty> createState() =>
      _DropdownFormFieldState();
}

class _DropdownFormFieldState extends State<CustomDropdownFormFieldPrioirty> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        value: widget.selectedValue,
        iconEnabledColor: const Color(0xff5F33E1),
        isExpanded: true,
        hint: Text(
          widget.text!,
          style: Styles.textstyle16.copyWith(
              fontWeight: FontWeight.w700, color: const Color(0xff5F33E1)),
        ),
        icon: const Icon(Icons.arrow_drop_down_rounded),
        iconSize: 30,
        elevation: 16,
        style: Styles.textstyle16.copyWith(
            fontWeight: FontWeight.w500, color: const Color(0xff5F33E1)),
        decoration: InputDecoration(
          prefixIcon:
              widget.prefixicon == null ? const Text("") : widget.prefixicon!,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF0ECFF),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.all(15),
          disabledBorder: InputBorder.none,
          fillColor: const Color(0xffF0ECFF),
          filled: true,
        ),
        onChanged: (String? newValue) {
          setState(() {
            widget.selectedValue = newValue;
          });
        },
        items: widget.items);
  }
}
