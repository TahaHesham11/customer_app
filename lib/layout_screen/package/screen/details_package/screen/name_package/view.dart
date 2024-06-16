import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_text_button.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/package_terms/view.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/view.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/view.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../constants/my_color.dart';
import '../../../../../../../custom/my_button.dart';
import '../../../../../../../custom/my_text.dart';

class NamePackageScreen extends StatelessWidget {
  const NamePackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NamePackageCubit(),
      child: Scaffold(


        body:


        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
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

                        MyText(text: 'Name Package'.tr(),margin: EdgeInsetsDirectional.only(start: 95.r),),
                      ],
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.all(15.r),
                    child: Column(
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
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsetsDirectional.only(top: 40.0,bottom: 20.r),
                          child: Row(
                            children: [
                              Image.asset('assets/images/check2.png'),
                              Expanded(
                                child: MyText(
                                  margin: EdgeInsetsDirectional.only(start: 5.r),
                                  maxLine: 1,
                                  text: 'Number of employees available within the package : 12'.tr(),
                                  color: Colors.grey,
                                  fontSize: 10.sp,

                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/check2.png'),
                            Expanded(
                              child: MyText(

                                maxLine: 1,
                                text: 'The number of card designs within the package: 4'.tr(),
                                color: Colors.grey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                margin: EdgeInsetsDirectional.only(start: 5.r),

                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding:  EdgeInsetsDirectional.only(top: 20.0.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7.r),
                                        color: Color(0xff38B6FF).withOpacity(0.7)
                                    ),
                                    child:  Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                                          child: Image.asset('assets/images/Rectangle 3 (3).png',width: 80.w,),
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/images/Ellipse 5.png',height: 15.h,color: Mycolor,width: 12.w,),

                                            Padding(
                                              padding:  EdgeInsetsDirectional.only(start: 5.0.r),
                                              child: Image.asset('assets/images/Ellipse 3.png',height: 15.h,color: Mycolor,width: 12.w,),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyText(text: 'Design name'.tr(),fontSize: 8.sp,margin: EdgeInsetsDirectional.only(top: 5.r),)

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7.r),
                                        color: Color(0xffEFDA85)
                                    ),
                                    child:  Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                                          child: Image.asset('assets/images/Rectangle 3 (3).png',width: 80.w,),
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/images/Ellipse 5.png',height: 15.h,color: Mycolor,width: 12.w,),

                                            Padding(
                                              padding:  EdgeInsetsDirectional.only(start: 5.0.r),
                                              child: Image.asset('assets/images/Ellipse 3.png',height: 15.h,color: Mycolor,width: 12.w,),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyText(text: 'Design name'.tr(),fontSize: 8.sp,margin: EdgeInsetsDirectional.only(top: 5.r),)

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.r),
                                      color: Color(0xffEC3737).withOpacity(0.7)
                                    ),
                                    child:  Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                                          child: Image.asset('assets/images/Rectangle 3 (3).png',width: 80.w,),
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/images/Ellipse 5.png',height: 15.h,color: Mycolor,width: 12.w,),
                                        
                                            Padding(
                                              padding:  EdgeInsetsDirectional.only(start: 5.0.r),
                                              child: Image.asset('assets/images/Ellipse 3.png',height: 15.h,color: Mycolor,width: 12.w,),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyText(text: 'Design name'.tr(),fontSize: 8.sp,margin: EdgeInsetsDirectional.only(top: 5.r),)

                                ],
                              ),
                              Image.asset('assets/images/right-arrow.png',width: 33.w,height: 33.h,)
                            ],
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 20.0.r),
                          child: Row(
                            children: [
                              Image.asset('assets/images/check2.png'),
                              Expanded(
                                child: MyText(

                                  maxLine: 1,
                                  text: 'Package description:'.tr(),
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  margin: EdgeInsetsDirectional.only(start: 5.r),

                                ),
                              ),
                            ],
                          ),
                        ),

                        MyText(
                          textAlign: TextAlign.center,
                            text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق'
                                '. إذا كنت تحتاج'
                                ' إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد،',
                        color: Colors.grey,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: CustomTextButton(text: 'Terms and conditions of the package'.tr(),
                              fontSize: 12.sp,
                              margin: EdgeInsetsDirectional.only(top: 10.r,bottom: 20.r),
                              onPressed: () {
                              navigateTo(context, PackageTermsScreen());

                              },)),
                        MyButton(
                          onPressed: (){
                            navigateTo(context, const ConfirmInformationScreen());
                          },
                            text: 'Subscribe now'.tr(),
                        width: 150.w,
                          height: 35.h,
                          fontSize: 12.sp,
                          margin: EdgeInsetsDirectional.only(bottom: 20.r),
                        ),
                        MyButton(
                          text: 'Custom packages'.tr(),
                          border: Border.all(color: Mycolor),
                          background: Colors.white,
                          width: 150.w,
                          height: 35.h,
                          fontSize: 12.sp,
                          textColor: Mycolor,
                          onPressed: () {
                            navigateTo(context, SpecializedPackagesScreen());
                          },
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
