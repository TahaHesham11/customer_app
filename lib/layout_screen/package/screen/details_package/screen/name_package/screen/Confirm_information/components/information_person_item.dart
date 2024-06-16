import 'dart:math';

import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../../custom/my_text.dart';
import '../../../specialized_packages/screen/subscribe_now/view.dart';
class InformationPersonItem extends StatelessWidget {
  const InformationPersonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset('assets/images/id-card.png'),
                MyText(
                  text: 'customer name'.tr(),
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/phone-call.png'),
                MyText(
                  text: '0101020202;',
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/mail.png'),
                MyText(
                  text: 'user@gmail;',
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/employee.png', width: 15.w, height: 15.h),
                MyText(
                  text: 'Company Name'.tr(),
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/employee.png', width: 15.w, height: 15.h),
                MyText(
                  text: 'Company business'.tr(),
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/Discount.png'),
                MyText(
                  text: 'Discount code: 120'.tr(),
                  margin: EdgeInsetsDirectional.only(start: 10.r),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
            Center(
              child: MyButton(
                onPressed: () {
                  navigateTo(context, SubscribeNowScreen());
                },
                text: 'Update'.tr(),
                width: 100.w,
                height: 25.h,
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsetsDirectional.only(start: 20.r),
          width: 100.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            color: Color(0xff38B6FF),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                child: Image.asset('assets/images/Rectangle 3 (3).png',width: 70.w,),
              ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/Ellipse 5.png',height: 20.h,color: Mycolor,width: 15.w,),

                Padding(
                  padding:  EdgeInsetsDirectional.only(start: 5.0.r),
                  child: Image.asset('assets/images/Ellipse 3.png',height: 20.h,color: Mycolor,width: 15.w,),
                ),
              ],
            ),
          ),
            ],
          ),
        )
      ],
    );
  }
}




