import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/core/utils/app_router.dart';
import 'package:taskyapp/core/utils/styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    naviagteToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff5F33E1),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Task",
                style:
                    Styles.textstyle30.copyWith(color: const Color(0xffFFFFFF)),
              ),
              Text(
                "y",
                style:
                    Styles.textstyle30.copyWith(color: const Color(0xffF5F876)),
              )
            ],
          ),
        ));
  }

  void naviagteToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(AppRouter.konBoardingView);
    });
  }
}
