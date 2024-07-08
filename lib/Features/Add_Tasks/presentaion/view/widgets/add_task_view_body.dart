import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskyapp/Features/Add_Tasks/presentaion/view/widgets/custom_image_botton.dart';
import 'package:taskyapp/Features/Auth/presentaion/view/widgets/custom_drop_down_menu_priority.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_text_botton.dart';
import 'package:taskyapp/core/widgets/custom_text_field.dart';

import '../../../../../core/utils/app_router.dart';

class AddTaskViewBody extends StatelessWidget {
  AddTaskViewBody({super.key, this.selectedValue});
  final List<String> options = ['Waiting', 'Finished', 'inprogress'];
  final String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Add new task",
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAddImgButton(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Task title",
                style: Styles.textstyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xff6E6A7C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: "Enter title here...",
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Task Description",
                style: Styles.textstyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xff6E6A7C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                  hintText: "Enter description here...", maxLines: 5),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Priority",
                style: Styles.textstyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xff6E6A7C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomDropdownFormFieldPrioirty(
                items: options.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: selectedValue,
                prefixicon: const Icon(
                  Icons.flag,
                  color: Color(0xff5F33E1),
                ),
                text: "choose priority...",
              ),
              //const CustomPriorityTag(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Due date",
                style: Styles.textstyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xff6E6A7C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "choose due date...",
                suffixIcon: IconButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100));
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    color: Color(0xff5F33E1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextBotton(
                  height: 58,
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.khometasksview);
                  },
                  title: "Add task",
                  backgroundColor: const Color(0xff5F33E1)),
            ],
          ),
        ),
      ),
    );
  }
}
