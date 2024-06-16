import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/custom_form_field.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';

import 'package:customer_app/settings/bloc/cubit.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ConnectScreen extends StatelessWidget {

  ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = SettingCubit.get(context);
    return Scaffold(
      appBar: CustomAppBar(title: 'More'.tr(),),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(12.0.r),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 315.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffE4F5FF),
                      borderRadius: BorderRadius.circular(24.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(text: 'Connect with us'.tr(), margin: EdgeInsetsDirectional.only(end: 10.r),),
                      Image.asset('assets/images/service 1.png'),
                    ],
                  ),
                ),
              ),
              CustomFormField(
                controller: cubit.nameContactController,
                type: TextInputType.name,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                backGround: Color(0xffE4F5FF),
                filled: false,
                label: 'Name'.tr(),
              ),
              CustomFormField(
                controller: cubit.phoneContactController,
                type: TextInputType.number,
                filled: false,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                backGround: Color(0xffE4F5FF),
                label: 'Mobile number'.tr(),
              ),
              CustomFormField(
                controller: cubit.detailsContactController,
                type: TextInputType.text,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                backGround: Color(0xffE4F5FF),
                filled: false,
                label: 'inquiry'.tr(),
              ),
              CustomFormField(
                controller: cubit.messageContactController,
                type: TextInputType.text,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                backGround: const Color(0xffE4F5FF),
                height: 100,
                maxLines: 3,
                filled: false,
                label: 'Write your message here..'.tr(),
              ),
              SizedBox(height: 20.h), // لإعطاء بعض المساحة قبل الزر
              MyButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Send'.tr(),
                width: 205.w,
              ),
            ],
          ),

        ),
      ),
    );
  }
}
