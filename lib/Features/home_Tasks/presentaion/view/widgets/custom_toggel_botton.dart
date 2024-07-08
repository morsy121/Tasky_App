import 'package:flutter/material.dart';

class CustomToggelBotton extends StatefulWidget {
  const CustomToggelBotton({super.key});

  @override
  State<CustomToggelBotton> createState() => _CustomToggelBottonState();
}

class _CustomToggelBottonState extends State<CustomToggelBotton> {
  List<bool> selections = List.generate(4, (index) => false);
  @override
  void initState() {
    super.initState();
    // Set the first segment as selected initially
    selections[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        borderColor: Colors.grey,
        fillColor: Colors.purple,
        borderWidth: 2,
        selectedBorderColor: Colors.grey,
        selectedColor: Colors.white,
        borderRadius: BorderRadius.circular(20),
        children: [
          Text('All'),
          Text('All'),
          Text('All'),
          Text('All'),
        ],
        onPressed: (int index) {
          setState(() {
            for (int buttonIndex = 0;
                buttonIndex < selections.length;
                buttonIndex++) {
              if (buttonIndex == index) {
                selections[buttonIndex] = true;
              } else {
                selections[buttonIndex] = false;
              }
            }
          });
        },
        isSelected: selections);
  }
}
