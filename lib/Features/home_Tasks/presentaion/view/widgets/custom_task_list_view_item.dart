import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/widgets/coustom_condition_task.dart';
import 'package:taskyapp/core/utils/app_router.dart';
import 'package:taskyapp/core/utils/styles.dart';

import '../../../../../core/utils/assets.dart';

class CustomTaskListViewItem extends StatelessWidget {
  const CustomTaskListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.khometasksdetailsview);
      },
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 80,
                  height: 120,
                  child: Image.asset(
                    AssetsImages.taskImage,
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Grocery Shopping...",
                          style: Styles.textstyle16
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CustomConditionTask(
                          text: "waiting",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "This application is designed for super shops. By using",
                      style: Styles.textstyle14.copyWith(
                          color: const Color.fromARGB(255, 94, 96, 108)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.flag,
                          color: Color(0xff5F33E1),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("Medium",
                            style: Styles.textstyle12.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff5F33E1),
                            )),
                        const Spacer(),
                        Text(
                          "30/12/2022",
                          style: Styles.textstyle12.copyWith(
                              color: const Color.fromARGB(255, 94, 96, 108)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3, top: 5),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    (Icons.more_vert),
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
