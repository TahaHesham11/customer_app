import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class DetailsPackageItem extends StatelessWidget {
  const DetailsPackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return         Container(
      width: 315.w,
      height: 91.h,
      decoration: BoxDecoration(
        color: Mycolor.withOpacity(0.1),
        border: Border.all(color: Mycolor),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30.w,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  width: 25.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Mycolor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Padding(
                    padding:  EdgeInsetsDirectional.only(start: 10.0.r),
                    child: Image.asset('assets/images/logo.png',width: 34.w,height: 34.h,),
                  ),
                  MyText(
                    text: 'Name Package'.tr(),
                    color: Colors.black,
                    fontSize: 14.sp,
                    margin: EdgeInsetsDirectional.only(end: 30.r),
                  ),
                  MyText(
                    text: '13 ريال سعودي',
                    color: Colors.red,
                    fontSize: 13.sp,
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.0.r,horizontal: 20.r),
                child: Row(
                  children: [
                    Image.asset('assets/images/check2.png'),
                    MyText(

                      maxLine: 1,
                      text: 'Number of Employees:12'.tr(),
                      fontSize: 12.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      margin: EdgeInsetsDirectional.only(start: 5.r),

                    ),
                  ],
                ),
              ),

            ],
          ),

        ],
      ),
    );

  }
}
