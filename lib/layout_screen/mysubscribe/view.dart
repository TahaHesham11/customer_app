import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/layout_screen/mysubscribe/Reports/view.dart';
import 'package:customer_app/layout_screen/mysubscribe/bloc/cubit.dart';
import 'package:customer_app/layout_screen/mysubscribe/components/subscribe_item.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/add_company/view.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/add_employee/view.dart';
import 'package:customer_app/layout_screen/mysubscribe/visit/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class SubscribeScreen extends StatelessWidget {

   SubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>MySubscribeCubit(),
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset('assets/images/Union.png')),
            Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 45.0.r,bottom: 20.r),
                  child: Center(
                    child: MyText(
                      text: 'My subscriptions'.tr(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 15.r),
                  height: 70.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: Mycolor.withOpacity(0.1)),
                  child: Row(
                    children: [
                      Container(
                        width: 34.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      MyText(
                        text: 'Name Package'.tr(),
                        fontSize: 13.sp,
                        margin: EdgeInsetsDirectional.only(start: 8.r, end: 20.r),
                      ),
                    ],
                  ),
                ),
                SubscribeItem(
                  text: 'Company name'.tr(),
                  image: 'assets/images/id-card (1) 1.png',
                ),
                SubscribeItem(
                  text: 'Employees : احمد احمد'.tr(),
                  image: 'assets/images/hired.png',
                ),
                SubscribeItem(
                  text: 'Number of employees available within the package: 12'.tr(),
                  image: 'assets/images/finder.png',
                ),
                SubscribeItem(
                  text: 'Number of employees added: 5'.tr(),
                  image: 'assets/images/number-one.png',
                ),
                SubscribeItem(
                  text: 'Number of remaining employees : 7'.tr(),
                  image: 'assets/images/number-one.png',
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.0.r,horizontal: 20.r),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AddCompanyScreen();
                              },
                            );
                          },
                          text: 'Add a company'.tr(),
                          margin: EdgeInsetsDirectional.only(end: 10.r),
                        ),
                      ),
                      Expanded(
                        child: MyButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AddEmployee();
                              },
                            );
                          },
                          text: 'Add a employee'.tr(),
                          margin: EdgeInsetsDirectional.only(start: 10.r),
                        ),
                      ),
                    ],
                  ),
                ),


                MyButton(
                  text: 'Reports'.tr(),
                  border: Border.all(color: Mycolor),
                  background: Colors.white,
                  textColor: Mycolor,
                  onPressed: () {

                    navigateTo(context, ReportsScreen());

                  },
                ),
                MyButton(
                  margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                  text: 'Visits'.tr(),
                  border: Border.all(color: Mycolor),
                  background: Colors.white,
                  textColor: Mycolor,
                  onPressed: () {

                    navigateTo(context, VisitScreen());

                  },
                ),



              ],
            ),
          ],
        ),
      )),
    );
  }
}
