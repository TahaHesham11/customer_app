import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/layout_employee_screen/visit/components/visit_item.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom/custom_visit.dart';

class EmployeeVisitScreen extends StatelessWidget {
  const EmployeeVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // عدد التابات
      child: Scaffold(
        appBar: CustomAppBar(
          isBack: false,
          title: 'Visits'.tr(),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Mycolor,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                indicator: BoxDecoration(
                  color: Mycolor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                indicatorColor: Colors.white,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      'Previous visits'.tr(),
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Current visits'.tr(),
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Future visits'.tr(),
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const EmployeeVisitItem();
                      },
                      separatorBuilder: (context, index) => SizedBox(height: 20.r,),
                      itemCount: 5,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTitleText(
                          text: 'Date : 12/20'.tr(),
                          fontSize: 16.sp,
                          margin: EdgeInsetsDirectional.only(start: 20.r, top: 15.r),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return const EmployeeVisitItem();
                          },
                          separatorBuilder: (context, index) => SizedBox(height: 20.r,),
                          itemCount: 5,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                          width: 315.w,
                          height: 95.h,
                          padding: EdgeInsets.all(20.r),
                          decoration: BoxDecoration(
                            border: Border.all(color: Mycolor),
                          ),
                          child: Column(
                            children: [
                              CustomVisitScreen(
                                text: 'Company Name'.tr(),
                                title: 'code 7x',
                              ),
                              CustomVisitScreen(
                                text: 'Company image'.tr(),
                                title: 'code 7x 2',
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyButton(
                              onPressed: () {},
                              text: 'Delete'.tr(),
                              width: 150.w,
                              height: 35.h,
                              background: Colors.red,
                            ),
                            MyButton(
                              onPressed: () {},
                              text: 'Update'.tr(),
                              width: 150.w,
                              height: 35.h,
                              margin: EdgeInsetsDirectional.only(start: 20.r),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
