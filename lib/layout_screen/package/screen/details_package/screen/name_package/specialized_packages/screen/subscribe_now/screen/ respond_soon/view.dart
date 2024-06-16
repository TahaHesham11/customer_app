import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class  RespondSoonScreen extends StatelessWidget {
  const  RespondSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/alarm.png'),
              CustomTitleText(text: 'Will respond soon'.tr),
              Padding(
                padding: EdgeInsets.all(16.0), // Add some padding for better appearance
                child: MyText(
                  text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، '
                      'لقد تم توليد هذا النص من مولد النص العربى، ',
                  textAlign: TextAlign.center,
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
