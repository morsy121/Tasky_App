import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/core/utils/app_router.dart';
import 'package:taskyapp/core/utils/assets.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_text_botton.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset(AssetsImages.onBoarding)),
          Text(
            textAlign: TextAlign.center,
            "Task Management & \n To-Do List",
            style: Styles.textstyle24.copyWith(color: const Color(0xff24252C)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            "This productive tool is designed to help\nyou better manage your task\n project-wise conveniently!",
            style: Styles.textstyle14.copyWith(color: const Color(0xff6E6A7C)),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            child: CustomTextBotton(
                height: 58,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.ksigninview);
                },
                title: "Let’s Start",
                icon: Icons.arrow_forward_ios_rounded,
                backgroundColor: const Color(0xff5F33E1)),
          )
        ],
      ),
    );
  }
}
