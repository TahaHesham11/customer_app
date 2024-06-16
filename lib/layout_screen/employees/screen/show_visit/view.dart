import 'package:customer_app/constants/my_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../custom/my_text.dart';

class ShowVisitScreen extends StatelessWidget {
  const ShowVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Union_up.png'),
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 30.0.r),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 17.sp,
                      ),
                    ),
                    MyText(
                      text: 'Employees'.tr(),
                      margin: EdgeInsetsDirectional.only(start: 95.r),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 20.r),
                width: 315.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Mycolor.withOpacity(0.1),

                ),
                child: Center(
                  child: MyText(
                    text: 'Number of visits he made: 123 visits'.tr(),
                    fontSize: 13.sp,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
