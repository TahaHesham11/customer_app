import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/cubit.dart';

class VisitEvaluationScreen extends StatefulWidget {
  const VisitEvaluationScreen({super.key});

  @override
  State<VisitEvaluationScreen> createState() => _VisitEvaluationScreenState();
}

class _VisitEvaluationScreenState extends State<VisitEvaluationScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>VisitEvaluationCubit(),
      child: Scaffold(
        appBar:  CustomAppBar(
          title: 'Add visit'.tr(),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child:  Column(
              children: [
                Container(
                  width: 315.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: const Color(0xffE4F5FF),
                  ),
                  child:  Center(child: MyText(text: 'Evaluation'.tr())),
                ),
                buildOption(0, 'No good results'.tr(), Colors.red),
                buildOption(1, 'good results'.tr(), Colors.green),
                buildOption(2, 'Average results'.tr(), Colors.yellow),

                MyButton(onPressed: (){
                  Navigator.pop(context);
                }, text: 'Save'.tr(),margin: EdgeInsetsDirectional.only(top: 50.r),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOption(int index, String text, Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Row(
        children: [
          Checkbox(
            activeColor: selectedIndex == index ? Mycolor : Colors.white,
            value: selectedIndex == index,
            onChanged: (value) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          MyButton(
            margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
            width: 269.w,
            height: 56.h,
            onPressed: () {},
            text: text,
            background: color,
            textColor: color == Colors.white ? Mycolor : Colors.white,
          ),
        ],
      ),
    );
  }
}
