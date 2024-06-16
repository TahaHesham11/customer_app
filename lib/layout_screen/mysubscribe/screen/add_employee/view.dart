import 'package:card_swiper/card_swiper.dart';
import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/add_employee/bloc/cubit.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/components/card_item.dart';
import 'package:flutter/material.dart';
import 'package:customer_app/custom/custom_defaultField.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class AddEmployee extends StatelessWidget {

   AddEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AddEmployeeCubit(),
      child: Builder(
        builder: (context) {
          final cubit = AddEmployeeCubit.get(context);
          return AlertDialog(
            content: SizedBox(
              height: 517.h,
              width: 315.w,
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    MyText(text: 'Add an employee'.tr()),
                    CustomDefaultField(
                      fontSize: 11.sp,
                      width: 240.w,
                      controller: cubit.chooseCompanyController,
                      type: TextInputType.name,
                      label: 'اختيار الشركة',

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.idNumberController,
                      type: TextInputType.number,
                      label: 'ID Number',

                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomDefaultField(
                            width: 240.w,
                            fontSize: 11.sp,
                            controller: cubit.nameCompanyController,
                            type: TextInputType.name,
                            label: 'Company Name'.tr(),
                          ),
                        ),
                        Expanded(
                          child: CustomDefaultField(
                            width: 240.w,
                            fontSize: 11.sp,
                            controller: cubit.companyLogoController,
                            type: TextInputType.name,
                            label: 'Company logo'.tr(),
                            suffixImage: GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/images/image.png',color: Colors.grey,)
                            ),


                          ),
                        ),
                      ],
                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.employeeNameController,
                      type: TextInputType.name,
                      label: 'Employee name'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,
                      controller: cubit.employeePhotoController,
                      type: TextInputType.name,
                      label: 'Employee photo'.tr(),
                      suffixImage: GestureDetector(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/image.png',color: Colors.grey,)
                      ),


                    ),

                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.employeeSpecialtyController,
                      type: TextInputType.text,
                      label:'Employee specialty'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.phoneNumberController,
                      type: TextInputType.number,
                      label: 'Mobile number'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.emailController,
                      type: TextInputType.emailAddress,
                      label: 'E-mail'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.employeeInformationController,
                      type: TextInputType.text,
                      label: 'Employee information'.tr(),

                    ),
                    CustomDefaultField(
                      width: 240.w,
                      fontSize: 11.sp,

                      controller: cubit.passwordController,
                      type: TextInputType.visiblePassword,
                      label: 'Password'.tr(),

                    ),

                    Container(
                      margin: EdgeInsetsDirectional.only(top: 10.r),
                      padding: EdgeInsetsDirectional.only(top: 10.r,bottom: 5.r),
                      height: 160.h,
                      width: 239.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        color: Colors.white,
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )

                          ]
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topStart,

                            child: MyText(text: 'Card design'.tr(),
                              margin: EdgeInsetsDirectional.only(start: 10.r),
                              fontSize: 11.sp,color: Colors.grey,),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      cubit.swiperController.previous();
                                    },
                                    child: Container(
                                      width: 60.w,
                                      height: 60.h,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(0.1),
                                            spreadRadius: 0,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_back_ios, size: 16.sp),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.0.r),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: Swiper(
                                        controller: cubit.swiperController,
                                        autoplay: false,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Image.asset('assets/images/slider.png');
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      cubit.swiperController.next();
                                    },
                                    child: Container(
                                      width: 60.w,
                                      height: 60.h,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(0.1),
                                            spreadRadius: 0,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_forward_ios_rounded, size: 16.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                activeColor: cubit.isCheckBox ? Mycolor : Colors.transparent,
                                  value: cubit.isCheckBox,
                                  onChanged: (value){
                                      cubit.changeIsCheck(value);
                                  },
                              ),
                              MyText(text: 'To choose'.tr(),
                                fontSize: 11.sp,color: Colors.grey,)
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            actions: <Widget>[
          Center(
            child: Column(
              children: [
                MyButton(
                  onPressed: () {

                    navigateTo(context,CardItem());
                  },
                  text: 'addition'.tr(),
                  margin: EdgeInsetsDirectional.only(bottom: 20.r),
                ),
              ],
            ),
          ),
            ],
          );
        }
      ),
    );
  }
}
