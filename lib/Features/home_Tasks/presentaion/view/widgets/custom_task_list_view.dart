import 'package:flutter/material.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/widgets/custom_task_list_view_item.dart';

class CustomTaskListView extends StatelessWidget {
  const CustomTaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const CustomTaskListViewItem(),
        itemCount:10,
      ),
    );
  }
}
