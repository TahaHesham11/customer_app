import 'package:customer_app/auth/verification/view.dart';
import 'package:customer_app/layout_employee_screen/view.dart';
import 'package:customer_app/layout_screen/view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/my_color.dart';
import '../../../core/view.dart';
import '../../../custom/custom_defaultField.dart';
import '../../../custom/custom_text_button.dart';
import '../../../custom/custom_title_text.dart';
import '../../../custom/my_button.dart';
import '../../../custom/my_text.dart';
import '../register/view.dart';
import 'bloc/cubit.dart';
import 'bloc/states.dart';

class LoginScreen extends StatelessWidget {
late bool isCustomer ;
   LoginScreen({super.key,  required this.isCustomer});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context)=> LoginCubit(),
      child: Scaffold(

        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset('assets/images/Vector.png'),
              Image.asset('assets/images/logo.png'),
               CustomTitleText(margin:EdgeInsetsDirectional.only(bottom: 20.r),text: 'Login'.tr()),


              BlocBuilder<LoginCubit,LoginStates>(
                builder: (context, state) {
                  final cubit = LoginCubit.get(context);

                  return CustomDefaultField(
                    controller: cubit.phoneController,
                    type: TextInputType.phone,
                    prefix: Image.asset('assets/images/Mobile.png'),
                    label: 'Mobile number'.tr(),
                  );
                },
              ),
              BlocBuilder<LoginCubit,LoginStates>(
                builder: (context, state) {
                  final cubit = LoginCubit.get(context);
                  return CustomDefaultField(
                    controller: cubit.passwordController,
                    type: TextInputType.visiblePassword,
                    isPassword: cubit.isPassword,
                    prefix: Icon(Icons.lock,size: 18.sp,color: Colors.grey,),
                    suffixImage: IconButton(onPressed: (){
                      cubit.changeIsPassword();

                    },icon: Image.asset('assets/images/eye.png'),),
                    label: 'Password'.tr(),
                  );
                },

              ),
               Align(
                   alignment: AlignmentDirectional.topStart,
                   child: CustomTextButton(
                     margin: EdgeInsetsDirectional.only(start: 40.r),
                       fontSize: 15.sp,
                     onPressed: (){
                       navigateAndFinish(context, VerificationScreen());
                     },
                       color: Mycolor,
                       text: 'Forgot your password'.tr()
                   )
               ),


              MyButton(
                margin: EdgeInsetsDirectional.only(top: 50.r,bottom: 30.r),
                onPressed: (){


              navigateTo(context,isCustomer ?  const EmployeeLayoutScreen(employeeLayout: false,): const LayoutScreen(isLayout: true,));
                },
                text:'Login'.tr(),
                background: Mycolor,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(text: "You don't already have an account".tr(),fontSize: 10.sp,),
                  CustomTextButton(
                    fontSize: 15.sp,
                    onPressed: (){
                //      Navigator.pop(context);
                    navigateAndFinish(context,isCustomer ? const RegisterScreen(isShowRegister: true,):const RegisterScreen(isShowRegister: false,));
                    },
                    text: 'Create an account'.tr(),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
