import 'package:customer_app/custom/custom_defaultField.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/add_company/bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../core/view.dart';
import '../components/card_item.dart';

class AddCompanyScreen extends StatelessWidget {

   AddCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AddCompanyCubit(),
      child: Builder(

        builder: (context) {
          final cubit = AddCompanyCubit.get(context);
          return  AlertDialog(
            content: SizedBox(
              height: 517.h,
              width: 315.w,
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    MyText(text: 'Add a company'.tr()),
                    CustomDefaultField(
                      fontSize: 11.sp,
                      width: 240.w,
                      controller: cubit.nameCompanyController,
                      type: TextInputType.name,
                      label: 'Company Name'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.companyBusinessController,
                      type: TextInputType.text,
                      label: 'Company business'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,
                      controller: cubit.companyLogoController,
                      type: TextInputType.name,
                      label: 'Company logo'.tr(),
                      suffixImage: GestureDetector(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/image.png',color: Colors.grey,)
                      ),


                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.areaAddressController,
                      type: TextInputType.text,
                      label: 'Address (area)'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.cityAddressController,
                      type: TextInputType.text,
                      label: 'Address (city)'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.neighborhoodAddressController,
                      type: TextInputType.text,
                      label:'Address (neighborhood)'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.phoneNumberController,
                      type: TextInputType.number,
                      label: 'Mobile number'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.emailController,
                      type: TextInputType.emailAddress,
                      label: 'E-mail'.tr(),

                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Center(
                child: Column(
                  children: [
                    MyButton(
                      onPressed: () {
                        navigateTo(context,CardItem());
                      },
                      text: 'addition'.tr(),
                      margin: EdgeInsetsDirectional.only(bottom: 20.r),
                    ),
                  ],
                ),
              ),
            ],
          );
        },

      ),
    );
  }
}
