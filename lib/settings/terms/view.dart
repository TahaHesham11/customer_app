import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(title: 'My account'.tr(),),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Padding(
          padding:  EdgeInsets.all(12.0.r),
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
                      MyText(text: 'الشروط والاحكام',margin: EdgeInsetsDirectional.only(end: 10.r),),

                      Image.asset('assets/images/user-profile.png'),
                    ],
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(15.0.r),
                child: const MyText(
                  textAlign: TextAlign.center,

                  text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد '
                    'النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى '
                    'إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر'
                    ' من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو'
                    ' مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه'
                    ' الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم '
                    'الموقع',

                  color: Color(0xff7C7C7C),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
