import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomAddImgButton extends StatefulWidget {
  const CustomAddImgButton({super.key});

  @override
  State<CustomAddImgButton> createState() => _CustomAddImgButtonState();
}

class _CustomAddImgButtonState extends State<CustomAddImgButton> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        pickImage();
      },
      child: DottedBorder(
        color: const Color(0xff5F33E1),
        strokeCap: StrokeCap.butt,
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Center(
            child: image != null
                ? Image.file(
                    image!,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.add_photo_alternate,
                        color: Color(0xff5F33E1),
                      ),
                      const SizedBox(width: 8),
                      Text('Add Img',
                          style: Styles.textstyle19.copyWith(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff5F33E1),
                          )),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
