import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/Features/Auth/presentaion/view/widgets/custom_drop_down_menu.dart';
import 'package:taskyapp/core/utils/app_router.dart';
import 'package:taskyapp/core/utils/assets.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_intl_phone_field.dart';
import 'package:taskyapp/core/widgets/custom_main_text.dart';

import '../../../../../core/widgets/custom_text_botton.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                    AssetsImages.auth,
                   height: 400,
                   width: double.infinity,
                  ),
                ),
                const CustomMainText(
                  text: "Sign Up",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: "Name",
                  keyboardType: TextInputType.text,
                  onTap: () {},
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomIntlPhoneField(
                  keyboardType: TextInputType.phone,
                  onChanged: (phone) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: "Years of experience...",
                  keyboardType: TextInputType.text,
                  onTap: () {},
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomDropdownFormField(),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: "Address",
                  keyboardType: TextInputType.text,
                  onTap: () {},
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: "password..",
                  keyboardType: TextInputType.text,
                  onTap: () {},
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
                      GoRouter.of(context).push(AppRouter.ksigninview);
                    },
                    title: "Sign Up",
                    backgroundColor: const Color(0xff5F33E1)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have any account?",
                      style: Styles.textstyle14,
                    ),
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.ksigninview);
                        },
                        child: Text(
                          "Sign in",
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
