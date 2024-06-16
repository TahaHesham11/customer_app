import 'package:customer_app/auth/register/view.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_Drawer_list.dart';
import 'package:customer_app/custom/default_button.dart';
import 'package:customer_app/settings/Connect/view.dart';
import 'package:customer_app/settings/privacy/view.dart';
import 'package:customer_app/settings/profile/view.dart';
import 'package:customer_app/settings/terms/view.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom/custom_app_bar.dart';
import '../../custom/my_text.dart';

import 'about_us/view.dart';
import 'bloc/cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>SettingCubit(),
      child: Scaffold(
        appBar:  CustomAppBar(
          isBack: false,
          title: 'My account'.tr(),
        ),
        body: Padding(
          padding:  EdgeInsets.all(12.0.r),
          child: ListView(
            children: [
              CustomDrawerList(
                leadingIcon: Image.asset('assets/images/man.png'),
                onTap: (){
                  navigateTo(context,  ProfileScreen());
                },
                title: 'personal information'.tr(),
              ),
              CustomDrawerList(
                leadingIcon: Image.asset('assets/images/lang.png'),
                title: 'Language'.tr(),
                trailing: MyText(text: 'En'.tr(),),
              ),
              CustomDrawerList(
                onTap: (){
                  navigateTo(context, const PrivacyScreen());
                },
                leadingIcon: Image.asset('assets/images/privacy.png'),
                title: 'privacy policy'.tr(),
              ),
              CustomDrawerList(
                leadingIcon: Image.asset('assets/images/user-profile.png'),
                onTap: (){
                  navigateTo(context, const AboutUsScreen());
                },
                title: 'About Us'.tr(),
              ),
              CustomDrawerList(
                onTap: (){
                  navigateTo(context, const TermsScreen());
                },
                leadingIcon: Image.asset('assets/images/terms.png'),
                title: 'Terms and Conditions'.tr(),
              ),
              CustomDrawerList(
                onTap: (){
                  navigateTo(context, ConnectScreen());
                },
                leadingIcon: Image.asset('assets/images/service 1.png'),
                title: 'Connect with us'.tr(),
              ),

          DefaultButton(

              width: 205.w,
              onPressed: (){
          navigateAndFinish(context, RegisterScreen(isShowRegister: true,));
              },
            text: 'sign out'.tr(),
            image:const Icon(Icons.logout,color: Colors.white,),
           )
            ],
          ),
        ),
      ),
    );
  }
}
