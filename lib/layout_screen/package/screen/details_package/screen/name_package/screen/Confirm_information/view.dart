import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/bloc/states.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/components/details_package_item.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/components/information_person_item.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/screen/payment/view.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmInformationScreen extends StatelessWidget {

  const ConfirmInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = ConfirmInformationCubit.get(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Confirm personal information and payment'.tr(),
      ),

      body: SingleChildScrollView(
        child: Column(

          children: [
            Align(
                alignment: AlignmentDirectional.topStart,
                child: MyText(text: 'Package details'.tr(),
                  margin: EdgeInsetsDirectional.only(start: 30.r,bottom: 10.r),

                  color: Mycolor,
                )),

            DetailsPackageItem(),

            Align(
              alignment: AlignmentDirectional.topStart,
              child: MyText(
                text: 'personal information'.tr(),
                color: Mycolor,
                margin: EdgeInsetsDirectional.only(top: 20.r,bottom: 10.r,start: 30.r),),
            ),



          Container(
            width: 315.w,
            height: 214.h,
            decoration: BoxDecoration(
              color: Mycolor.withOpacity(0.1),
              border: Border.all(color: Mycolor),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 30.w,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        width: 25.w,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Mycolor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const InformationPersonItem(),
              ],
            ),
          ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.r,vertical: 20.r),
              child: Row(
                children: [
                  BlocBuilder<ConfirmInformationCubit,ConfirmInformationStates>(
                    builder: (context, state) {
                      return Checkbox(
                        activeColor: cubit.isCheckBox ? Mycolor : Colors.white,
                        value: cubit.isCheckBox,

                        onChanged: (value) {

                          cubit.isCheck();

                        },
                        splashRadius: 20,
                        visualDensity: VisualDensity.compact,
                      );
                    },

                  ),
                  MyText(
                    text: 'I agree to the terms and conditions'.tr(),
                  )
                ],
              ),
            ),


            MyButton(onPressed: (){

              navigateTo(context, PaymentScreen());

            }, text: 'Proceed to payment'.tr(),margin: EdgeInsetsDirectional.only(bottom: 30.r),),

          ],
        ),
      ),
    );
  }
}
