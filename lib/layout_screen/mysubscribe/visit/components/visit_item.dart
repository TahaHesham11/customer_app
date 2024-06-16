import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:easy_localization/easy_localization.dart';
import '../../../../../custom/my_text.dart';
import '../../../../layout_employee_screen/home/screen/add_visit/visit_evaluation/view.dart';

class VisitItem extends StatelessWidget {
  const VisitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 10.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: MyText(text: 'احمد احمد', fontSize: 10.sp, maxLine: 2, margin: EdgeInsetsDirectional.only(start: 5.r)),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'code 7x', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'User@gm', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: '01012585', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'العنوان', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'اسم التخصص', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'link', fontSize: 10.sp, maxLine: 2),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // This line centers the column vertically
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 5.r),
                    width: 15.r, // Adjust the size as needed
                    height: 15.r, // Adjust the size as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  CustomTextButton(
                      text: 'Evaluation of the visit'.tr(),
                    maxLines: 2,
                    fontSize: 10.sp , onPressed: () {
                        navigateTo(context, VisitEvaluationScreen());

          },),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
