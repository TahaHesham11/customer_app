import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/custom_form_field.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_employee_screen/home/screen/add_visit/bloc/cubit.dart';
import 'package:customer_app/layout_employee_screen/home/screen/add_visit/bloc/states.dart';
import 'package:customer_app/layout_employee_screen/home/screen/add_visit/screen/add_success/view.dart';
import 'package:customer_app/layout_employee_screen/home/screen/add_visit/visit_evaluation/view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddVisitScreen extends StatelessWidget {
  const AddVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddVisitCubit(),
      child: Builder(
        builder: (context) {
          final cubit = AddVisitCubit.get(context);
          return Scaffold(
            appBar: CustomAppBar(title: 'Add a visit'.tr()),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            cubit.isClickChange(false);
                          },
                          child: BlocBuilder<AddVisitCubit, AddVisitStates>(
                            builder: (context, state) {
                              // Check the state and set the color accordingly
                              Color buttonColor = cubit.isClick ? Colors.white : Mycolor;
                              return Container(
                                height: 170.h,
                                width: 143.w,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(24.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/clock.png'),
                                    MyText(
                                      text: 'Later'.tr(),
                                      color: cubit.isClick ? Mycolor : Colors.white,
                                      margin: EdgeInsetsDirectional.only(top: 15.r),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            cubit.isClickChange(true);
                          },
                          child: BlocBuilder<AddVisitCubit, AddVisitStates>(
                            builder: (context, state) {
                              // Check the state and set the color accordingly
                              Color buttonColor = cubit.isClick ? Mycolor : Colors.white;
                              return Container(
                                height: 170.h,
                                width: 143.w,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(24.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/productivity.png'),
                                    MyText(
                                      text: 'Current visit'.tr(),
                                      color: cubit.isClick ? Colors.white : Mycolor,
                                      margin: EdgeInsetsDirectional.only(top: 15.r),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<AddVisitCubit, AddVisitStates>(
                      builder: (context, state) {
                        return cubit.isClick
                            ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomFormField(
                              controller: cubit.nameCompanyController,
                              type: TextInputType.name,
                              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                              label: 'Company Name'.tr(),
                            ),
                            CustomFormField(
                              controller: cubit.pictureController,
                              type: TextInputType.name,
                              margin: EdgeInsetsDirectional.only(bottom: 20.r),
                              label: 'Company image'.tr(),
                              suffixImage: GestureDetector(
                                onTap: () {},
                                child: Image.asset('assets/images/image.png'),
                              ),
                            ),
                            CustomFormField(
                              controller: cubit.dateVisitController,
                              type: TextInputType.datetime,
                              label: 'Date of visit'.tr(),
                            ),
                            CustomFormField(
                              controller: cubit.emailController,
                              type: TextInputType.emailAddress,
                              label: 'E-mail'.tr(),
                              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                            ),
                            CustomFormField(
                              controller: cubit.phoneController,
                              type: TextInputType.phone,
                              label: 'Mobile number'.tr(),
                            ),
                            CustomFormField(
                              controller: cubit.specializationController,
                              type: TextInputType.text,
                              label: 'Specialization'.tr(),
                              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                            ),
                            CustomFormField(
                              controller: cubit.numberEmployeesController,
                              type: TextInputType.number,
                              label: 'Number of Employees'.tr(),
                            ),
                            CustomFormField(
                              controller: cubit.commentsController,
                              type: TextInputType.text,
                              label: 'Notes'.tr(),
                              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                            ),
                            CustomFormField(
                              controller: cubit.cardsController,
                              type: TextInputType.number,
                              suffixImage: GestureDetector(
                                onTap: () {},
                                child: Image.asset('assets/images/image.png'),
                              ),
                              label: 'The cards that you collected'.tr(),
                            ),
                            MyButton(
                              margin: EdgeInsetsDirectional.only(top: 30.r),
                              onPressed: () {
                                navigateTo(context, VisitEvaluationScreen());
                              },
                              text: 'Evaluation of the visit'.tr(),
                              border: Border.all(color: Mycolor),
                              background: Colors.white,
                              textColor: Mycolor,
                            ),
                          ],
                        )
                            : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            CustomFormField(
                              controller: cubit.nameCompanyController,
                              type: TextInputType.name,
                              margin: EdgeInsetsDirectional.only(top: 20.r),
                              label: 'Company Name'.tr(),
                            ),
                            SizedBox(height: 20.h),
                            CustomFormField(
                              controller: cubit.visitController,
                              type: TextInputType.datetime,
                              label: 'Date of visit'.tr(),
                            ),
                          ],
                        );
                      },
                    ),




                    MyButton(
                      onPressed: () {
                        navigateTo(context, const AddSuccessScreen());
                      },
                      text: 'addition'.tr(),
                      margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
