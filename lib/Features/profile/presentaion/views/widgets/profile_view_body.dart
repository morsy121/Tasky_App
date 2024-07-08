import 'package:flutter/material.dart';
import 'package:taskyapp/Features/profile/presentaion/views/widgets/custom_profile_item.dart';
import 'package:taskyapp/core/utils/styles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Profile",
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomProfilevItem(
              title: "NAME",
              subtitle: "Islam Sayed",
            ),
            SizedBox(
              height: 10,
            ),
            CustomProfilevItem(
              title: "PHONE",
              subtitle: "+20 123 456-7890",
              icon: Icon(Icons.copy),
            ),
            SizedBox(
              height: 10,
            ),
            CustomProfilevItem(
              title: "Level",
              subtitle: "Senior",
            ),
            SizedBox(
              height: 10,
            ),
            CustomProfilevItem(
              title: "Years of experience",
              subtitle: "7 years",
            ),
            SizedBox(
              height: 10,
            ),
            CustomProfilevItem(
              title: "Location",
              subtitle: "Fayyum, Egypt",
            )
          ],
        ),
      ),
    );
  }
}
