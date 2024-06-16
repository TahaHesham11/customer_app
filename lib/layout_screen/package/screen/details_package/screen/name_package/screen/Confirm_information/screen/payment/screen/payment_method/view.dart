import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_form_field.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../../../../../custom/custom_app_bar.dart';
import 'screen/Payment_successful/view.dart';

class PaymentMethodScreen extends StatelessWidget {
   PaymentMethodScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final cubit = ConfirmInformationCubit.get(context);
    return  Scaffold(
      appBar: CustomAppBar(
        title: 'paying off'.tr(),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            MyText(text: 'Enter the card number'.tr()),


            CustomFormField(
              controller: cubit.cardNumberController,
              type: TextInputType.name,
              suffixImage:IconButton(onPressed: (){},
                icon: Image.asset('assets/images/trash.png'),),

              prefix: Image.asset('assets/images/debit-card.png'),
              label: '12345',
              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.0.r),
              child: Row(
                children: [
                  Expanded(
                    child: CustomFormField(
                      controller: cubit.monthController,
                      type: TextInputType.datetime,
                      margin: EdgeInsetsDirectional.only(start: 20.r,end: 20.r),
                      label: 'Month'.tr(),
                    ),
                  ),
                  Expanded(
                    child: CustomFormField(
                      controller: cubit.yearsController,
                      type: TextInputType.datetime,
                      margin: EdgeInsetsDirectional.only(end: 20.r),
                      label: 'Year'.tr(),
                    ),
                  ),

                ],
              ),
            ),


            CustomFormField(
              controller: cubit.verificationController,
              type: TextInputType.number,
              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
              label: 'Card verification code'.tr()
            ),

            MyButton(onPressed: (){

              navigateTo(context, PaymentSuccessScreen());

            }, text: 'Pay'.tr(),margin: EdgeInsetsDirectional.only(top: 20.r),)

          ],
        ),
      ),

    );
  }
}
