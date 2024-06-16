import 'package:card_swiper/card_swiper.dart';
import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/home/bloc/cubit.dart';
import 'package:customer_app/layout_screen/home/components/package_item.dart';
import 'package:customer_app/layout_screen/home/notification/view.dart';
import 'package:customer_app/layout_screen/home/screen/free_packages/view.dart';
import 'package:customer_app/layout_screen/package/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../custom/custom_text_button.dart';
import '../package/screen/details_package/screen/name_package/specialized_packages/view.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SwiperController swiperController = SwiperController();

  SwiperController swiperClientController = SwiperController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>HomeCubit(),
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Image.asset(
              'assets/images/logo.png',
              width: 93.w,
              height: 93.h,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, const NotificationScreen());
                },
                icon: Image.asset('assets/images/active.png'),
              )
            ]),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0.r, bottom: 20.r),
                child: SizedBox(
                  height: 182.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Swiper(
                      pagination:  const SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.white,
                          color: Colors.grey,
                        ),
                      ),


                      autoplay: true,

                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Image.asset('assets/images/slider.png');
                      },
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    height: 200.h,
                    width: 326.w,
                    padding: EdgeInsetsDirectional.only(start: 10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff38B6FF).withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/check2.png'),
                            Expanded(
                              child: MyText(
                                margin: EdgeInsetsDirectional.only(start: 5.r),
                                maxLine: 1,
                                text: 'عدد 14 تصميم',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/check2.png'),
                            Expanded(
                              child: MyText(
                                margin: EdgeInsetsDirectional.only(start: 5.r),
                                maxLine: 1,
                                text: 'هذا النص يمكن تغييره',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(end: 5.0.r),
                              child: Image.asset('assets/images/vecteezy.png'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/check2.png'),
                            Expanded(
                              child: MyText(
                                margin: EdgeInsetsDirectional.only(start: 5.r),
                                maxLine: 1,
                                text: 'عدد 14 تصميم',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      navigateTo(context, FreePackageScreen());

                    },
                    child: Container(
                      width: 150.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xff226D99),
                            Color(0xff38B6FF),
                          ],
                        ),
                      ),
                      child: Row(

                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                              width: 28.w,
                              height: 28.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r)
                              ),
                              child: Image.asset('assets/images/logo.png')),

                          MyText(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            text: 'Free packages'.tr(),fontSize: 14.sp,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              Container(
                padding: EdgeInsetsDirectional.only(top: 20.r,bottom: 10.r),
                margin: EdgeInsetsDirectional.symmetric(horizontal: 10.r),

                child: GestureDetector(
                  onTap: () {
                    // navigateTo(context, const ProductScreen());
                  },
                  child: Row(
                    children: [
                      CustomTextButton(
                        onPressed: () {},
                        text: 'Packages'.tr(),
                        fontSize: 15.sp,
                      ),
                      const Spacer(),
                      CustomTextButton(
                          text: 'Show All'.tr(),
                          color: Colors.grey,
                          onPressed: (){
                            navigateTo(context, PackageScreen());
                          })
                    ],
                  ),
                ),
              ),

             Container(

               height: 206.h,
               child: ListView.separated(
                 physics: const BouncingScrollPhysics(),
                 scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) {
                     return const PackageItem();
                   },
                   separatorBuilder: (context, index) => SizedBox(width: 10.w,),
                   itemCount: 5),
             ),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: MyText(text: 'Custom packages'.tr(),
                  margin: EdgeInsetsDirectional.only(top: 20.r,bottom: 10.r,start: 20.r),),
              ),
              Container(
                height: 109.h,
                width: 322.w,
                padding: EdgeInsetsDirectional.only(start: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: Colors.white,
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )

                    ]              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            width: 34.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: Image.asset('assets/images/logo.png')),
                        Expanded(
                          child: MyText(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            maxLine: 1,
                            fontSize: 13.sp,
                            text: 'Package name'.tr(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsetsDirectional.only(start: 40.0.r),
                          child: Image.asset('assets/images/check2.png'),
                        ),
                        Expanded(
                          child: MyText(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            maxLine: 1,
                            text: 'هذا النص يمكن تغييره',
                            fontSize: 8.r,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsetsDirectional.only(start: 40.0.r),
                          child: Image.asset('assets/images/check2.png'),
                        ),
                        Expanded(
                          child: MyText(
                            margin: EdgeInsetsDirectional.only(start: 5.r),
                            maxLine: 1,
                            text: 'عدد 14 تصميم',
                            fontSize: 8.r,
                            color: Colors.grey,
                          ),
                        ),
                        MyButton(
                          height: 30.h,
                          width: 120.w,
                          onPressed: () {
                            navigateTo(context, SpecializedPackagesScreen());
                          },
                          text: 'Subscribe now'.tr(),
                          fontSize: 12.sp,
                          margin: EdgeInsetsDirectional.only(end: 10.r),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: MyText(text: 'Available types of electronic cards'.tr(),
                  margin: EdgeInsetsDirectional.only(top: 20.r,start: 20.r),),
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        swiperController.previous();
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
                    flex: 8,
                    child: SizedBox(
                      height: 182.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Swiper(
                          controller: swiperController,
                          autoplay: false,
                          viewportFraction: 0.8,
                          scale: 0.9,
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
                        swiperController.next();
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

              MyText(text: 'Design name'.tr()),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/color.png',),
                  Image.asset('assets/images/color.png',color: Colors.yellow,),
                  Image.asset('assets/images/color.png',color: Colors.green,),
                  Image.asset('assets/images/color.png',color: Colors.brown,),
                ],
              ),
              Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: MyText(text: 'Customer opinions'.tr(),margin: EdgeInsetsDirectional.only(start: 30.r,top: 20.r),)),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        swiperClientController.previous();
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
                    flex: 8,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0.r, bottom: 20.r),
                      child: SizedBox(
                        height: 182.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Swiper(
                            controller: swiperClientController,
                            autoplay: false,
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    'assets/images/image_home.png',
                                  ),
                                  Container(
                                    width: 220.w,
                                    height: 107.h,
                                    padding: EdgeInsetsDirectional.all(10.r),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 5,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        MyText
                                          (text: 'نور احمد', fontSize: 12.sp,
                                            margin: EdgeInsetsDirectional.only(top: 20.r),


                                            color: Mycolor),
                                        Expanded(
                                          child: MyText(
                                            text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد،',
                                            textAlign: TextAlign.center,
                                            fontSize: 8.sp,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              );

                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        swiperClientController.next();
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


            ],
          ),
        ),
      ),
    );
  }


}
