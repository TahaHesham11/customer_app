import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_visit.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/layout_employee_screen/home/screen/add_visit/screen/add_success/view.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeVisitItem extends StatelessWidget {

  final bool isTitle ;
  const EmployeeVisitItem({super.key,this.isTitle = false,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: 315.w,
          margin: EdgeInsetsDirectional.only(top: 20.r),
          height: 378.h,
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            border: Border.all(color: Mycolor),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomVisitScreen(
                text: 'Company Name'.tr(),
                title: 'code 7x',
              ),
              CustomVisitScreen(
                text: 'Company image'.tr(),
                title: 'code 7x 2',

              ),
              CustomVisitScreen(
                text: 'E-mail'.tr(),
                title: 'code@gmail ',
              ),
              CustomVisitScreen(
                text: 'Mobile number'.tr(),
                title: '01094125852',
              ),
              CustomVisitScreen(
                text: 'Address'.tr(),
                title: 'السعودية',
              ),
              CustomVisitScreen(
                text: 'Specialization'.tr(),
                title: 'برمجيات و تسويق',
              ),
              CustomVisitScreen(
                text: 'Number of Employees'.tr(),
                title: '125',
              ),
              CustomVisitScreen(
                text:  'Notes'.tr(),
                title:   '-',
              ),
              CustomVisitScreen(
                text: 'The cards that you collected'.tr(),
                title: '',
              ),
              CustomVisitScreen(
                text: 'Evaluation of the visit'.tr(),
                title: 'No good results'.tr(),
              ),
              MyButton(onPressed: (){
                navigateTo(context, const AddSuccessScreen());
              }, text: 'addition'.tr(),width: 150.w,height: 35.h
                ,margin: EdgeInsetsDirectional.only(top: 5.r),)

            ],
          ),
        ),
      ],
    );
  }
}
