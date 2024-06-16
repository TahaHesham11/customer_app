import 'package:customer_app/auth/login/view.dart';
import 'package:customer_app/auth/verification/screen/%20number_verification/screen/Reset_password/bloc/cubit.dart';
import 'package:customer_app/auth/verification/screen/%20number_verification/screen/Reset_password/bloc/states.dart';
import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_defaultField.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/view.dart';
import '../../../../../../../custom/custom_title_text.dart';


class ResetScreen extends StatelessWidget {

final bool? isCustomer ;
   ResetScreen({super.key,this.isCustomer});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>ResetPasswordCubit(),
      child: BlocConsumer<ResetPasswordCubit,ResetPasswordStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ResetPasswordCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/logo.png'),
                  CustomTitleText(text: 'Password Reset'.tr(),margin: EdgeInsetsDirectional.only(bottom: 20.r),),


                  CustomDefaultField(
                    controller: cubit.newPasswordController,
                    type: TextInputType.phone,
                    prefix: Icon(Icons.lock,size: 18.sp,color: Colors.grey,),
                    label: 'New Password'.tr(),
                  ),

                  CustomDefaultField(
                    controller: cubit.confirmPasswordController,
                    type: TextInputType.phone,
                    prefix: Icon(Icons.lock,size: 18.sp,color: Colors.grey,),
                    label: 'Confirm password'.tr(),
                  ),

                  MyButton(
                    margin: EdgeInsetsDirectional.only(top: 50.r,bottom: 80.r),
                    onPressed: (){
                      navigateAndFinish(context, LoginScreen());

                    },
                    text:'save'.tr(),
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
