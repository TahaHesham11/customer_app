import 'package:customer_app/core/view.dart';
import 'package:customer_app/layout_screen/employees/screen/show_visit/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../constants/my_color.dart';
import '../../../../custom/my_text.dart';

class StaffTableItem extends StatelessWidget {
  const StaffTableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return            Container(
      margin: EdgeInsetsDirectional.only(bottom: 10.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: MyText(text: '1#', fontSize: 10.sp,maxLine: 1,margin: EdgeInsetsDirectional.only(start: 5.r),),
          ),
          Flexible(
            flex: 1,
            child: Icon(Icons.person),
          ),
          Flexible(
            flex: 1,
            child: MyText(text: 'احمد محمد', fontSize: 10.sp,maxLine: 1,),
          ),
          Flexible(
            flex: 1,

            child: MyText(text: 'اسم الشركة', fontSize: 10.sp,maxLine: 1,),
          ),

          Expanded(
            flex: 1,
            child: Container(
              width: 80.w,
              height: 20.h,
              color: Mycolor,
              child: MaterialButton(onPressed: (){},child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(text: 'location'.tr(),fontSize: 5.sp,)
                ],
              ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 90.w,
              height: 20.h,
              color: Mycolor,
              child: MaterialButton(onPressed: (){
                navigateTo(context, ShowVisitScreen());
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(text: 'Visits'.tr(),fontSize: 5.sp,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
