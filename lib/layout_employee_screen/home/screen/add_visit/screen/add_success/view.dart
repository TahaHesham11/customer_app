import 'package:customer_app/custom/my_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSuccessScreen extends StatelessWidget {
  const AddSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions:
            [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded,size: 17.sp,)
              ),
            ]


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/add_success.png'),
            MyText(text: 'Added successfully'.tr(),fontSize: 20.sp,fontWeight: FontWeight.w700,margin: EdgeInsetsDirectional.only(top: 15.r),)
          ],
        ),
      ),
    );
  }
}
