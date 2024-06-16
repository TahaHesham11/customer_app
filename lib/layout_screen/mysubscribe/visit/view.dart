import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/layout_screen/mysubscribe/visit/bloc/cubit.dart';
import 'package:customer_app/layout_screen/mysubscribe/visit/components/visit_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../custom/my_text.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>VisitCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/Union.png'),

            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),

              child: Column(
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
                          text: 'My subscribe'.tr(),
                          margin: EdgeInsetsDirectional.only(start: 95.r),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    height: 70.h,
                    width: 315.w,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10.r,vertical: 10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: Mycolor.withOpacity(0.1)
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/telemedicine.png'),
                        MyText(text: 'Visits'.tr()),
                        const Spacer(),
                        Image.asset('assets/images/filter.png')

                      ],
                    ),
                  ),


                  Container(
                    height: 50.h,
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.only(top: 20.r),
                    decoration: BoxDecoration(
                        color: Mycolor.withOpacity(0.1)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: MyText(text: 'Employee name'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'Company name'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'E-mail'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'Mobile number'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'Company address'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'Specialization'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'The cards you collect'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                        Expanded(child: MyText(text: 'Ratings'.tr(),color: Mycolor,fontSize: 10.sp,maxLine: 2,)),
                      ],
                    ),
                  ),


                  SingleChildScrollView(
                    child: Column(
                      children: [
                        // محتوى آخر هنا إذا لزم الأمر
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return const VisitItem();
                          },
                          itemCount: 50,
                        ),
                      ],
                    ),
                  )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
