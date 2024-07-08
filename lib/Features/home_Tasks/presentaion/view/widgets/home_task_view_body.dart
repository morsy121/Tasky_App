import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/widgets/custom_floating_action_button.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/widgets/custom_task_list_view.dart';
import 'package:taskyapp/core/utils/app_router.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_main_text.dart';

class HomeTaskViewBody extends StatelessWidget {
  const HomeTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
              icon: Icons.qr_code,
              onPressed: () {
                //GoRouter.of(context).push(AppRouter.khometasksdetailsview);
              },
              backgroundColor: const Color(0xffEBE5FF),
              colorIcon: const Color(0xff5F33E1),
              heroTah: "1"),
          const SizedBox(
            height: 10,
          ),
          CustomFloatingActionButton(
              icon: Icons.add,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kaddtaskview);
              },
              backgroundColor: const Color(0xff5F33E1),
              colorIcon: Colors.white,
              heroTah: "2"),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Logo",
            style: Styles.textstyle24.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_sharp,
              size: 30,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kprofileView);
            },
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            icon: const Icon(
              Icons.logout,
              size: 30,
              color: Color(0xff5F33E1),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: CustomMainText(
              text: "My Tasks",
              color: Color.fromARGB(255, 107, 112, 125),
            ),
          ),
          Expanded(child: CustomTaskListView())
        ],
      ),
    );
  }
}
