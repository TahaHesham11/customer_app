import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeItem extends StatelessWidget {

  final String text;
  final String image;
  const SubscribeItem({super.key,required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return               Container(
      margin: EdgeInsetsDirectional.only(top: 20.r),
      padding: EdgeInsetsDirectional.only(start: 10.r),
      width: 315.w,
      height: 44.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.white,
          boxShadow:  [
            BoxShadow(
              color: Colors.black12.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 3),
            )

          ]
      ),

      child: Row(
        children: [
          Image.asset(image),
          Expanded(
            child: MyText(
              maxLine: 1,
              overflow: TextOverflow.ellipsis,
              text: text,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              margin: EdgeInsetsDirectional.only(start: 10.r),),
          )
        ],
      ),
    );

  }
}
