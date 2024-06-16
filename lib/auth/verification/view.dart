import 'package:customer_app/auth/verification/screen/%20number_verification/view.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/my_color.dart';
import '../../../core/view.dart';
import '../../../custom/custom_defaultField.dart';
import '../../../custom/custom_title_text.dart';
import '../../../custom/my_button.dart';
import 'bloc/cubit.dart';
import 'bloc/states.dart';


class VerificationScreen extends StatelessWidget {
   VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>ForgetPasswordCubit(),
      child: BlocConsumer<ForgetPasswordCubit,ForgetPasswordStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ForgetPasswordCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/logo.png'),
                  CustomTitleText(text: 'Enter mobile number'.tr(),margin: EdgeInsetsDirectional.only(bottom: 20.r),),


                  CustomDefaultField(
                    controller: cubit.phoneController,
                    type: TextInputType.phone,
                    prefix: Image.asset('assets/images/Mobile.png'),
                    label: 'Mobile number'.tr(),
                  ),


                  MyButton(
                    margin: EdgeInsetsDirectional.only(top: 50.r,bottom: 80.r),
                    onPressed: (){
                      navigateTo(context, NumberVerificationScreen());
                    },
                    text:'Next'.tr(),
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

