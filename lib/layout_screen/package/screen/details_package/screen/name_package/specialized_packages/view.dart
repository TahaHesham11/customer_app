import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/screen/subscribe_now/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class SpecializedPackagesScreen extends StatelessWidget {
  const SpecializedPackagesScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:  Stack(
        children: [
          Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset('assets/images/Union.png')),

          Column(
            children: [
              Padding(
                padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined,size: 17.sp,

                      ),
                    ),

                    MyText(text: 'Custom packages'.tr(),margin: EdgeInsetsDirectional.only(start: 75.r),),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(12.0.r),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 315.w,
                        height: 137.h,
                        margin: EdgeInsetsDirectional.only(top: 10,bottom: 30.r),
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
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0.r),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyText(
                                      text: 'Name Package'.tr(),
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      margin: EdgeInsetsDirectional.only(end: 30.r),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 10.0.r),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/check2.png'),
                                          MyText(
                                            maxLine: 1,
                                            text: 'Package description:'.tr(),
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            margin: EdgeInsetsDirectional.only(start: 5.r),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: MyText(
                                        text: 'هذا النص '
                                            'هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد '
                                            'تم توليد هذا النص من مولد النص العربى، حيث يمكنك '
                                            'أن تولد مثل هذا النص أو العديد من النصوص الأخرى '
                                            'إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.'
                                            ' إذا كنت تحتاج إلى عدد أكبر من الفقرات '
                                            'يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد،',
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        maxLine: 5,
                                        fontWeight: FontWeight.w400,
                                        margin: EdgeInsetsDirectional.only(start: 5.r),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MyButton(onPressed: (){
                        navigateTo(context, SubscribeNowScreen());

                      }, text: 'Subscribe now'.tr())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
