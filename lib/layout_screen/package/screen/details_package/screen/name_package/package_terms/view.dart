import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/package_terms/bloc/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class PackageTermsScreen extends StatelessWidget {
  const PackageTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>PackageTermsCubit(),
      child: Scaffold(

        body: Stack(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset('assets/images/Union.png')),

            Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Image.asset('assets/images/Union_down.png')),
            Padding(
              padding:  EdgeInsetsDirectional.only(top: 30.0.r),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_outlined,size: 17.sp,

                          ),
                        ),

                        MyText(text: 'Terms and conditions of the package'.tr(),margin: EdgeInsetsDirectional.only(start: 30.r),),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.all(15.0),
                      child: MyText(
                        text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد'
                          ' هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص '
                            'الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث '
                          'عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق',

                        textAlign: TextAlign.center,
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                                     ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
