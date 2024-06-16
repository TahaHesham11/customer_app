import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/home/screen/free_packages/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:video_player/video_player.dart';


class FreePackageScreen extends StatefulWidget {
   FreePackageScreen({super.key});

  @override
  State<FreePackageScreen> createState() => _FreePackageScreenState();
}

class _FreePackageScreenState extends State<FreePackageScreen> {
  late VideoPlayerController controller;
@override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>FreePackageCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Free packages'.tr(),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 34.w,
                    height: 34.h,
                    margin: EdgeInsetsDirectional.only(start: 20.r),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  MyText(
                    text: 'Custom packages'.tr(),
                    fontSize: 13.sp,
                    color: Mycolor,
                    margin: EdgeInsetsDirectional.only(start: 8.r, end: 20.r),
                  ),
                ],
              ),


        Center(
          child: controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          ):Container(),

        ),
          MaterialButton(onPressed: (){

            setState(() {
              controller.value.isPlaying ? controller.pause() : controller.play();
            });

          },child:  Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),),
          Padding(
                padding: EdgeInsets.all(12.0.r),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 315.w,
                        height: 161.h,
                        margin: EdgeInsetsDirectional.only(top: 10, bottom: 30.r),
                        decoration: BoxDecoration(
                          color: Mycolor.withOpacity(0.1),
                          border: Border.all(color: Mycolor),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    width: 25.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Mycolor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16.r),
                                          bottomRight: Radius.circular(16.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0.r),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MyText(
                                        text: 'Conditions for subscribing to the package'.tr(),
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        margin:
                                            EdgeInsetsDirectional.only(end: 30.r),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10.0.r),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/images/check2.png'),
                                            Expanded(
                                              child: MyText(
                                                maxLine: 1,
                                                text:
                                                    'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة',
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                margin: EdgeInsetsDirectional.only(
                                                    start: 5.r),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10.0.r),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/images/check2.png'),
                                            Expanded(
                                              child: MyText(
                                                maxLine: 1,
                                                text:
                                                    'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة',
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                margin: EdgeInsetsDirectional.only(
                                                    start: 5.r),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10.0.r),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/images/check2.png'),
                                            Expanded(
                                              child: MyText(
                                                maxLine: 1,
                                                text:
                                                    'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة',
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                margin: EdgeInsetsDirectional.only(
                                                    start: 5.r),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10.0.r),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/images/check2.png'),
                                            Expanded(
                                              child: MyText(
                                                maxLine: 1,
                                                text:
                                                    'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة',
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                margin: EdgeInsetsDirectional.only(
                                                    start: 5.r),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10.0.r),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/images/check2.png'),
                                            Expanded(
                                              child: MyText(
                                                maxLine: 1,
                                                text:
                                                    'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة',
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                margin: EdgeInsetsDirectional.only(
                                                    start: 5.r),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 315.w,
                        height: 91.h,
                        decoration: BoxDecoration(
                          color: Mycolor.withOpacity(0.1),
                          border: Border.all(color: Mycolor),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    width: 25.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Mycolor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16.r),
                                          bottomRight: Radius.circular(16.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    MyText(
                                      text: 'Package duration'.tr(),
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      margin: EdgeInsetsDirectional.only(start: 20.r),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.0.r, horizontal: 20.r),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/check2.png'),
                                      MyText(
                                        maxLine: 1,
                                        text: '15 day'.tr(),
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        margin: EdgeInsetsDirectional.only(start: 5.r),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 315.w,
                        height: 91.h,
                        margin: EdgeInsetsDirectional.symmetric(vertical: 30.r),
                        decoration: BoxDecoration(
                          color: Mycolor.withOpacity(0.1),
                          border: Border.all(color: Mycolor),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    width: 25.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Mycolor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16.r),
                                          bottomRight: Radius.circular(16.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    MyText(
                                      text: 'Number of subscriptions in the package'.tr(),
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      margin: EdgeInsetsDirectional.only(start: 20.r),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.0.r, horizontal: 20.r),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/check2.png'),
                                      MyText(
                                        maxLine: 1,
                                        text: 'Subscriptions'.tr(),
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        margin: EdgeInsetsDirectional.only(start: 5.r),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 315.w,
                        height: 91.h,
                        decoration: BoxDecoration(
                          color: Mycolor.withOpacity(0.1),
                          border: Border.all(color: Mycolor),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    width: 25.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Mycolor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16.r),
                                          bottomRight: Radius.circular(16.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    MyText(
                                      text: 'Number of designs in the package'.tr(),
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      margin: EdgeInsetsDirectional.only(start: 20.r),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.0.r, horizontal: 20.r),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/check2.png'),
                                      MyText(
                                        maxLine: 1,
                                        text: '10 Designs'.tr(),
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        margin: EdgeInsetsDirectional.only(start: 5.r),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      MyButton(
                          onPressed: () {
                            navigateTo(context, const ConfirmInformationScreen());
                          },
                          text: 'Subscribe now'.tr(),margin: EdgeInsetsDirectional.only(top: 20.r),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
