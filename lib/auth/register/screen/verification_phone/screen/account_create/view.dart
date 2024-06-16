import 'package:customer_app/custom/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class AccountCreateScreen extends StatefulWidget {
  final bool? isCustomer;

   AccountCreateScreen({super.key,this.isCustomer});

  @override
  State<AccountCreateScreen> createState() => _AccountCreateScreenState();
}

class _AccountCreateScreenState extends State<AccountCreateScreen> {


  bool isNotificationAllowed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/acccount_create.png'),
            SizedBox(height: 20.h),
            CustomTitleText(
              textAlign: TextAlign.center,
              text: 'Your account has been created successfully'.tr(),
              margin: EdgeInsetsDirectional.only(bottom: 20.r),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(child: Image.asset('assets/images/Group.png')),
          Expanded(child: Image.asset('assets/images/Group 18.png'))
        ],
      ),

    );
  }



}