import 'package:flutter/material.dart';
import 'package:taskyapp/core/utils/styles.dart';

class CustomProfilevItem extends StatelessWidget {
  const CustomProfilevItem({super.key, this.title, this.subtitle, this.icon});
  final String? title;
  final String? subtitle;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF5F5F5)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!,
                style: Styles.textstyle12.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 111, 106, 106))),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(subtitle!,
                    style: Styles.textstyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 111, 106, 106))),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: icon == null ? const Text("") : icon!,
                  color: const Color(0xff5F33E1),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
