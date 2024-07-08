import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_main_text.dart';
import 'package:taskyapp/core/widgets/custom_text_botton.dart';
import 'package:taskyapp/core/widgets/custom_text_field.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_intl_phone_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                  AssetsImages.onBoarding,
                  height: 520,
                )),
                const CustomMainText(
                  text: "Login",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomIntlPhoneField(
                  keyboardType: TextInputType.phone,
                  onChanged: (phone) {},
                ),
                CustomTextField(
                  hintText: "Password...",
                  keyboardType: TextInputType.text,
                  onTap: () {},
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffBABABA),
                    ),
                  ),
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextBotton(
                    height: 58,
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.khometasksview);
                    },
                    title: "Sign In",
                    backgroundColor: const Color(0xff5F33E1)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Didn’t have any account?",
                      style: Styles.textstyle14,
                    ),
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.ksignupview);
                        },
                        child: Text(
                          "Sign Up here",
                          style: Styles.textstyle14.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              decorationThickness: 3,
                              decorationColor: const Color(0xff5F33E1),
                              decoration: TextDecoration.underline,
                              color: const Color(0xff5F33E1)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
