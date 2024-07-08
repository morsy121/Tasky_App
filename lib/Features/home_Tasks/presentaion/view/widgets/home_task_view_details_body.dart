import 'package:flutter/material.dart';
import 'package:taskyapp/Features/Auth/presentaion/view/widgets/custom_drop_down_menu_priority.dart';
import 'package:taskyapp/core/utils/assets.dart';
import 'package:taskyapp/core/utils/styles.dart';
import 'package:taskyapp/core/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class HomeTasKDetailsViewBody extends StatefulWidget {
  HomeTasKDetailsViewBody({
    super.key,
    this.selectedValue,
  });
  final String? selectedValue;

  @override
  State<HomeTasKDetailsViewBody> createState() => _HomeTasKDetailsViewBodyState();
}

class _HomeTasKDetailsViewBodyState extends State<HomeTasKDetailsViewBody> {
  final List<String> options = ['Waiting', 'Finished', 'inprogress'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Task Details",
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 375,
                  height: 225,
                  child: Image.asset(
                    AssetsImages.taskImagedetails,
                  )),
              const Text(
                "Grocery Shopping App",
                style: Styles.textstyle24,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "This application is designed for super shops. By\n using\n this application they can enlist all their products in\n one\n place and can deliver. Customers will get a one-\nstop\n solution for their daily shopping.",
                style: Styles.textstyle14
                    .copyWith(color: const Color(0xff24252C).withOpacity(0.6)),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDropdownFormFieldPrioirty(
                items: options.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: widget.selectedValue,
                text: "Inprogress",
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
                value: widget.selectedValue,
                prefixicon: const Icon(
                  Icons.flag,
                  color: Color(0xff5F33E1),
                ),
                text: "Medium Priority",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                filled: true,
                enabled: false,
                fillcolor: const Color(0xffF0ECFF),
                hintText: "30 June, 2022",
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
                    )),
              ),
              Center(
                child: SizedBox(
                    width: 326,
                    height: 326,
                    child: Image.asset(
                      AssetsImages.taskImagedetailsqr,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
