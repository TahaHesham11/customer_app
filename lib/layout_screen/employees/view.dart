import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/custom/custom_defaultField.dart';
import 'package:customer_app/layout_screen/employees/bloc/cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom/my_text.dart';
import 'compnents/staff_table_item.dart';

class EmployeesScreen extends StatelessWidget {
  EmployeesScreen({super.key});


  @override
  Widget build(BuildContext context) {
 final cubit = EmployeesCubit.get(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Union_up.png'),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 45.0.r,bottom: 20.r),
                    child: MyText(
                      text: 'Employees'.tr(),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: CustomDefaultField(
                            controller: cubit.searchController,
                            type: TextInputType.name,
                            suffixImage: Icon(
                              Icons.close,
                              size: 15.sp,
                            ),
                            prefix: const Icon(Icons.search),
                            label: 'Search now..'.tr(),
                            fontColor: Colors.black,
                            showBorder: true,
                            fillColor: Mycolor.withOpacity(0.1),
                          )),
                      Expanded(
                          child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/filter.png',
                          color: Colors.black,
                        ),
                      ))
                    ],
                  ),



                     Container(
                       width: double.infinity,
                       height: 35.h,
                       decoration: BoxDecoration(
               color: Mycolor.withOpacity(0.1)
                       ),

                       child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 MyText(text: 'ID',color: Mycolor,fontSize: 10.sp,),
                 MyText(text: 'Employee photo'.tr(),color: Mycolor,fontSize: 10.sp,),
                 MyText(text: 'Employee name'.tr(),color: Mycolor,fontSize: 10.sp,),
                 MyText(text: 'Company name'.tr(),color: Mycolor,fontSize: 10.sp,),
                 MyText(text: 'View the site'.tr(),color: Mycolor,fontSize: 10.sp,),
                 MyText(text: 'View visits'.tr(),color: Mycolor,fontSize: 10.sp,),
               ],
                       ),
                     ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return const StaffTableItem();
                          },
                          itemCount: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
