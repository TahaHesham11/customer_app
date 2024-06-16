import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_employee_screen/home/bloc/cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'screen/add_visit/view.dart';

class EmployeeHomeScreen extends StatelessWidget {
  const EmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/logo_home.png',height: 93.h,width: 93.w,),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(

            children: [

              Container(
                height: 520.h,
                width: 306.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(24.r)
                ),
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 15.r,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Center(child: CustomTitleText(text: 'code 7x',color: Colors.white,margin: EdgeInsetsDirectional.symmetric(vertical: 15.r),)),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const MyText(text: 'ID 24',color: Colors.white,),
                              MyText(text: 'Designer',color: Colors.white,margin: EdgeInsetsDirectional.symmetric(vertical: 10.r),),
                              const MyText(text: 'Hesham',color: Colors.white,),
                            ],
                          ),
                          const Spacer(),
                          Image.asset('assets/images/woman.png')
                        ],
                      ),
                      MyText(text: 'E-mail'.tr(),color: Colors.white,),
                      MyText(text: 'user@gmail',color: Colors.white,margin: EdgeInsetsDirectional.only(bottom: 20.r),),
                      MyText(text: 'Mobile number'.tr(),color: Colors.white,),
                      MyText(text: '010125515',color: Colors.white,margin: EdgeInsetsDirectional.only(bottom: 20.r)),
                      MyText(text: 'Start date'.tr(),color: Colors.white,),
                      const MyText(text: '12/5/20',color: Colors.white,),

                      const Spacer(),
                      Padding(
                        padding:  EdgeInsetsDirectional.only(bottom: 20.r),
                        child: Center(
                          child: QrImageView(

                            backgroundColor: Colors.white,
                            data: '1234567890',
                            version: QrVersions.auto,
                            size: 100.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MyButton(onPressed: (){
                navigateTo(context, const AddVisitScreen());

              },margin: EdgeInsetsDirectional.only(top: 20.r,bottom: 30.r), text: 'Add a visit'.tr())
            ],
          ),
        ),
      ),
    );
  }
}
