import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../custom/my_text.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                width: 330.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xffFFFFFF),
                ),
                padding: EdgeInsetsDirectional.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/check.png'),
                        SizedBox(width: 5.w,),
                        Expanded(
                          flex: 5,
                          child: MyText(
                            maxLine: 1,
                              text: 'هذا النص هو مثال لنص يمكت تغييرهذا النص هو مثال لنص يمكت تغيير',
                              fontSize: 14.sp,
                              color: const Color(0xff22BB55)
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.close))
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                      child: MyText(
                          text:' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: const Color(0xff666666)
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
        Container(
            margin: EdgeInsetsDirectional.only(top: 10.r),
            width: 330.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xffFFFFFF),
            ),
            padding: EdgeInsetsDirectional.all(12.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/Danger.png'),
                    SizedBox(width: 5.w,),
                    Expanded(
                      flex: 5,
                      child: MyText(
                          text:'هذا النص هو مثال لنص يمكت تغيير',
                          fontSize: 14.sp,
                          color: const Color(0xffEE4444),
                        maxLine: 1,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: (){},
                        child: const Icon(Icons.close))
                  ],
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                  child: MyText(
                      text: ' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                      maxLine: 2,
                      color: const Color(0xff666666)
                  ),
                )
              ],
            )
        ),
      ],
    );
  }
}
