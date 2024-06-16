import 'package:customer_app/auth/verification/screen/%20number_verification/screen/Reset_password/view.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../constants/my_color.dart';
import '../../../../../core/view.dart';
import '../../../../../custom/custom_text_button.dart';
import '../../../../../custom/custom_title_text.dart';
import '../../../../../custom/my_button.dart';
import '../../../../../custom/my_text.dart';
import 'bloc/cubit.dart';
import 'bloc/states.dart';


class NumberVerificationScreen extends StatelessWidget {

  NumberVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>VerificationCubit(),
      child: BlocConsumer<VerificationCubit,VerificationStates>(
        listener: (context, state) {},
        builder: (context, state) {

          final cubit = VerificationCubit.get(context);

          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/logo.png'),
                  CustomTitleText(
                    text: 'Mobile number verification'.tr(),
                    margin: EdgeInsetsDirectional.only(bottom: 20.r),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric( horizontal: 40.r),
                    child: PinCodeTextField(
                      textInputAction: TextInputAction.send,
                      // validator:    validate(text: 'code'),

                      appContext: context,
                      length: 4,
                      controller: cubit.verificationNumber,
                      autoFocus: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      animationType: AnimationType.scale,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5.r),
                        fieldHeight: 50.h,
                        fieldWidth: 50.w,
                        borderWidth: 1.0.w,

                        activeFillColor: Colors.grey[200],
                        activeColor: Colors.grey[200],
                        inactiveColor: Colors.grey[200],
                        inactiveFillColor: Colors.white,
                        selectedColor: Colors.grey[200],
                        selectedFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      onCompleted: (submitCode) {},
                      onChanged: (value) {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0.r),
                    child: Row(
                      children: [
                        MyText(
                          text: '60 seconds'.tr(),
                          color: Colors.grey[400],
                        ),
                        Spacer(),
                        CustomTextButton(
                          onPressed: () {
                            navigateTo(context, ResetScreen());
                          },
                          text: 'Resend the code'.tr(),
                          color: Mycolor,
                          fontSize: 15.sp,
                        ),
                      ],
                    ),
                  ),
                  MyButton(
                    margin: EdgeInsetsDirectional.only(top: 50.r, bottom: 80.r),
                    onPressed: () {
                      navigateAndFinish(context, ResetScreen());
                    },
                    text: 'Verification'.tr(),
                    background: Mycolor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
