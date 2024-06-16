import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/settings/bloc/cubit.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ProfileScreen extends StatelessWidget {


  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = SettingCubit.get(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'My account'.tr(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsetsDirectional.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 315.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffE4F5FF),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'personal information'.tr(),
                        margin: EdgeInsetsDirectional.only(end: 10.r),
                      ),
                      Image.asset('assets/images/man.png'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.r),
                child: TextField(
                  controller: cubit.nameController,
                  decoration: InputDecoration(
                    hintText: 'Name'.tr(),
                    prefixIcon: Image.asset('assets/images/id-card.png'),
                  ),
                ),
              ),
              TextField(
                controller: cubit.phoneController,
                decoration: InputDecoration(
                  hintText: 'Mobile number'.tr(),
                  prefixIcon: Image.asset('assets/images/phone-call.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.r),
                child: TextField(
                  controller: cubit.emailController,
                  decoration: InputDecoration(
                    hintText: 'E-mail'.tr(),
                    prefixIcon: Image.asset('assets/images/mail.png'),
                  ),
                ),
              ),
              TextField(
                controller: cubit.addressController,
                decoration: InputDecoration(
                  hintText: 'Address'.tr(),
                  prefixIcon: Image.asset('assets/images/address.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.r),
                child: TextField(
                  controller: cubit.passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password'.tr(),
                    prefixIcon: Image.asset('assets/images/lock.png'),
                  ),
                ),
              ),
              Center(
                child: MyButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Save'.tr(),
                  width: 205.w,
                  margin: EdgeInsetsDirectional.only(bottom: 15.r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
