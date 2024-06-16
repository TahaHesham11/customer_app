import 'package:customer_app/core/view.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../../custom/my_button.dart';
import '../../../../../../custom/my_text.dart';

class PackageDetailsItem extends StatelessWidget {
  const PackageDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return         Container(
      margin: EdgeInsetsDirectional.only(bottom: 20.r),
      height: 144.h,
      width: 306.w,
      decoration: BoxDecoration(
        color: Color(0xffE4F5FF),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 34.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset('assets/images/logo.png'),
                ),
                MyText(
                  text: 'Name Package'.tr(),
                  fontSize: 13.sp,
                  margin: EdgeInsetsDirectional.only(start:8.r,end: 20.r),
                ),
                MyText(

                  text: '13 ريال سعودي',
                  color: Colors.red,
                  fontSize: 13.sp,
                ),
              ],
            ),


            Padding(
              padding:  EdgeInsetsDirectional.only(start: 40.0.r),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/check2.png'),
                      Expanded(
                        child: MyText(
                          margin: EdgeInsetsDirectional.only(start: 5.r),
                          maxLine: 1,
                          text: 'عدد 14 تصميم',
                          color: Colors.grey,
                          fontSize: 10.sp,

                        ),
                      ),
                      Image.asset('assets/images/check2.png'),
                      Expanded(
                        child: MyText(
                          maxLine: 1,
                          text: 'عدد 14 تصميم',
                          color: Colors.grey,
                          fontSize: 10.sp,
                          margin: EdgeInsetsDirectional.only(start: 5.r),

                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(vertical: 8.0.r),
                    child: Row(
                      children: [
                        Image.asset('assets/images/check2.png'),
                        Expanded(
                          child: MyText(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            maxLine: 1,
                            text: 'عدد 14 تصميم',
                            color: Colors.grey,
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            MyButton(
              height: 30.h,
              width: 100.w,
              onPressed: () {
                navigateTo(context, NamePackageScreen());
              },
              text: 'Subscribe now'.tr(),
              fontSize: 12.sp,
            ),
          ],
        ),
      ),
    );

  }
}
