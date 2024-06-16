import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/components/details_package_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '',),

      body: SingleChildScrollView(
        child: Center(

          child: Padding(
            padding:  EdgeInsets.all(20.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Image.asset('assets/images/add_success.png'),
                CustomTitleText(text: 'You have successfully subscribed'.tr(),
                  margin: EdgeInsetsDirectional.only(top: 10.r,bottom: 60.r),),
                Align(
                    alignment: AlignmentDirectional.topStart,
                    child: MyText(text: '"Package details'.tr(),
                      color: Mycolor,
                      margin: EdgeInsetsDirectional.only(start: 10.r,bottom: 10.r),)),
                const DetailsPackageItem()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
