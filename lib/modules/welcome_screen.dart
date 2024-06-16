import 'package:customer_app/auth/register/view.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/default_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0069A9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CustomTitleText(text: 'Are you'.tr(),fontSize: 30.sp,),
            DefaultButton(
              background: const Color(0xffE4F5FF),
              onPressed: (){
                navigateTo(context, const RegisterScreen(isShowRegister: false,));

              },image: Row(
              children: [
                 Image.asset('assets/images/review.png'),
                MyText(text: 'Client'.tr(),margin: EdgeInsetsDirectional.only(start: 10.r),)
              ],
            ),),
            DefaultButton(

              background: const Color(0xffE4F5FF),

              onPressed: (){
                navigateAndFinish(context, const RegisterScreen(isShowRegister: true,));
              },image: Row(
              children: [
                 Image.asset('assets/images/employee 2.png'),
                MyText(text: 'Employee'.tr(),margin: EdgeInsetsDirectional.only(start: 10.r),)
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
