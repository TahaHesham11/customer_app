import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/screen/payment/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/screen/payment/screen/payment_method/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class PaymentScreen extends StatefulWidget {

  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSelectedMasterCard = false;
  bool isSelectedVisa = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>PaymentCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'paying off'.tr(),
        ),

        body: Padding(
          padding:  EdgeInsets.all(12.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 316.w,
                  height: 100.h,
                padding: EdgeInsetsDirectional.all(10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MyText(text: 'price : '.tr(),fontSize: 12.sp,fontWeight: FontWeight.w500,),
                        Expanded(
                          child: MyText(text: '123ر.س', maxLine: 1
                            ,fontSize: 12.sp,fontWeight: FontWeight.w500,),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10.0.r),
                      child: Row(
                        children: [
                          MyText(text: 'price : '.tr(),fontSize: 12.sp,fontWeight: FontWeight.w500,),
                          Expanded(child: MyText(

                            text: '123 ر.س',
                            maxLine: 1,
                            fontSize: 12.sp,fontWeight: FontWeight.w500,)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        MyText(text: 'price : '.tr(),fontSize: 12.sp,fontWeight: FontWeight.w500,),
                        Expanded(child: MyText(
                          text: '123ر.س',
                          maxLine: 1,
                          fontSize: 12.sp,fontWeight: FontWeight.w500,)),
                      ],
                    ),
                  ],
                ),
              ),


              MyText(
                text: 'Choose payment method'.tr(),
                margin: EdgeInsetsDirectional.only(
                  top: 20.r,bottom: 10.r)
                ,),


              Container(
                width: 327.w,
                height: 156.h,
                margin: EdgeInsetsDirectional.only(bottom: 40.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36.h,
                      width: 295.w,
                      margin: EdgeInsetsDirectional.only(top: 10.r),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsetsDirectional.only(start: 10.0.r),
                            child: Image.asset('assets/images/logos_mastercard.png'),
                          ),
                          const MyText(text: '44584 051151 0511 51',),
                          Checkbox(
                              activeColor: isSelectedMasterCard ? Mycolor : Colors.transparent,
                              value: isSelectedMasterCard,
                              shape: const CircleBorder(),
                              onChanged: (value){
                                setState(() {
                                  isSelectedMasterCard = !isSelectedMasterCard;
                                  if (isSelectedMasterCard) {
                                    isSelectedVisa = false;
                                  }
                                });
                              }

                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 36.h,
                      width: 295.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsetsDirectional.only(start: 10.0.r),
                            child: Image.asset('assets/images/logos_visa.png'),
                          ),
                          const MyText(text: '12522 00551 051548',),
                          Checkbox(
                              activeColor: isSelectedVisa ? Mycolor : Colors.transparent,
                              value: isSelectedVisa,
                              shape: const CircleBorder(),
                              onChanged: (value){
                                setState(() {
                                  isSelectedVisa = !isSelectedVisa;
                                  if (isSelectedVisa) {
                                    isSelectedMasterCard = false;
                                  }
                                });
                              }

                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text: 'Add a new card'.tr(),fontWeight: FontWeight.w400,fontSize: 14.sp,),

                        IconButton(onPressed: (){}, icon: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: Mycolor.withOpacity(0.3),
                            child: Icon(Icons.add,color: Mycolor,)))
                      ],
                    ),


                  ],
                ),
              ),

              MyButton(onPressed: (){

                navigateTo(context, PaymentMethodScreen());

              }, text: 'Next'.tr())

            ],
          ),
        ),
      ),
    );
  }
}
