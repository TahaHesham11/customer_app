import 'package:customer_app/auth/register/bloc/cubit.dart';
import 'package:customer_app/auth/register/bloc/states.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/my_color.dart';
import '../../../core/view.dart';
import '../../../custom/custom_defaultField.dart';
import '../../../custom/custom_text_button.dart';
import '../../../custom/my_text.dart';
import '../login/view.dart';
import 'screen/verification_phone/view.dart';

class RegisterScreen extends StatelessWidget {
 final bool? isShowRegister;
  const RegisterScreen({ this.isShowRegister ,super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = RegisterCubit.get(context);
          return Scaffold(

            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/logo.png'),


                  CustomTitleText(text: 'Create an account'.tr(),
                      color: Colors.black,

                      margin:EdgeInsetsDirectional.only(bottom: 30.r)),

                  isShowRegister! ?      Column(
                    children: [
                      CustomDefaultField(
                        controller: cubit.phoneController,
                        type: TextInputType.phone,
                        prefix: Image.asset('assets/images/Mobile.png'),
                        label: 'Mobile number'.tr(),
                      ),

                    ],
                  ): Column(
                    children: [
                      CustomDefaultField(
                        controller: cubit.nameController,
                        type: TextInputType.phone,
                        prefix: Icon(Icons.person,color: Colors.grey,),
                        label: 'Full name'.tr(),
                      ),
                      CustomDefaultField(
                        controller: cubit.phoneController,
                        type: TextInputType.phone,

                        prefix: Image.asset('assets/images/Mobile.png'),


                        label: 'Mobile number'.tr(),
                      ),
                      CustomDefaultField(
                        controller: cubit.emailController,
                        type: TextInputType.emailAddress,
                        isPassword: cubit.isConfirmPassword,
                        prefix: Image.asset('assets/images/mail.png'),

                        label: 'E-mail'.tr(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0.r, horizontal: 20.r),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50.h,
                                margin: EdgeInsetsDirectional.only(end: 10.r),
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(40.r),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                      value: cubit.isPersonCheckBox,
                                      activeColor: Mycolor,

                                      shape: CircleBorder(),
                                      onChanged: (value) {
                                        cubit.toggleCheckbox('person');
                                      },
                                    ),
                                    MyText(text: 'person'.tr()),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsetsDirectional.only(start: 10.r),
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.r),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                      value: cubit.isCompanyCheckBox,
                                      activeColor: Mycolor,
                                      shape: CircleBorder(),
                                      onChanged: (value) {
                                        cubit.toggleCheckbox('Company');
                                      },
                                    ),
                                    MyText(text: 'Company'.tr()),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),



                  BlocBuilder<RegisterCubit, RegisterStates>(
                    builder: (context, state) {
                      return CustomDefaultField(
                        controller: cubit.passwordController,
                        type: TextInputType.visiblePassword,
                        isPassword: cubit.isPassword,
                        prefix: Icon(
                          Icons.lock,
                          size: 18.sp,
                          color: Colors.grey,
                        ),
                        suffixImage: IconButton(
                          onPressed: () {
                            cubit.changeIsPassword();
                          },
                          icon: Image.asset('assets/images/eye.png'),
                        ),
                        label: 'Password'.tr(),
                      );
                    },
                  ),
                  BlocBuilder<RegisterCubit, RegisterStates>(
                    builder: (context, state) {
                      return CustomDefaultField(
                        controller: cubit.confirmController,
                        type: TextInputType.visiblePassword,
                        isPassword: cubit.isConfirmPassword,
                        prefix: Icon(
                          Icons.lock,
                          size: 18.sp,
                          color: Colors.grey,
                        ),
                        suffixImage: IconButton(
                          onPressed: () {
                            cubit.changeIsConfirmPassword();
                          },
                          icon: Image.asset('assets/images/eye.png'),
                        ),
                        label: 'Confirm password'.tr(),
                      );
                    },
                  ),




                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.r,vertical: 20.r),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: cubit.isCheckBox ? Mycolor : Colors.white,
                          value: cubit.isCheckBox,
                          onChanged: (value) {

                            cubit.isChangeIsCheck();
                          },
                          splashRadius: 20,
                          visualDensity: VisualDensity.compact,
                        ),
                         MyText(
                          text: 'I agree to the terms and conditions'.tr(),
                        )
                      ],
                    ),
                  ),

                  MyButton(
                    margin: EdgeInsetsDirectional.only(bottom: 30.r),
                    onPressed: (){
                      navigateTo(context,  VerificationPhone(isCustomer: isShowRegister!,));

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
                          navigateTo(context, LoginScreen(isCustomer: isShowRegister!,));
                        },
                        text: 'Login'.tr(),
                      )
                    ],
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
