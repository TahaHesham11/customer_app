import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_text_button.dart';
import 'package:customer_app/custom/custom_title_text.dart';
import 'package:customer_app/modules/on_boarding/bloc/cubit.dart';
import 'package:customer_app/modules/on_boarding/bloc/states.dart';
import 'package:customer_app/modules/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/my_color.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../custom/my_text.dart';
class OnBoardingModel{

  final String image;
  final String title;

  OnBoardingModel({
    required this.image,
    required this.title,
  });

}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)  =>OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit,OnBoardingStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = OnBoardingCubit.get(context);

          return Scaffold(
            backgroundColor: const Color(0xff0069A9),

            body: Padding(
              padding:  EdgeInsets.all(12.0.r),
              child: Column(
                children: [

                  Expanded(
                    child: PageView.builder(
                      controller: cubit.boardController,
                      onPageChanged: (index) {
                        if (index == cubit.boarding.length - 1) {
                          cubit.isLast = true;
                        } else {
                          cubit.isLast = false;
                        }
                      },
                      itemBuilder: (context, index) {
                        return onBoardingItem(cubit.boarding[index]);
                      },
                      itemCount: cubit.boarding.length,
                    ),
                  ),
                  Row(
                    children: [

                      CustomTextButton(text: 'Skip'.tr(),
                        fontSize: 14.sp,
                        onPressed: (){
                          navigateAndFinish(context, const WelcomeScreen());
                        },color: Colors.white,),

                      const Spacer(),
                      SmoothPageIndicator(
                        controller: cubit.boardController,
                        count: cubit.boarding.length,
                        effect:  const ExpandingDotsEffect(
                            dotColor: Colors.grey,
                            activeDotColor: Colors.white,
                            dotHeight: 10,
                            dotWidth: 10,
                            expansionFactor: 4,
                            spacing: 5.0
                        ),
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: (){
                          if(cubit.isLast){
                            navigateAndFinish(context, const WelcomeScreen());

                          }else{
                            cubit. boardController.nextPage(
                                duration: const Duration(
                                  milliseconds: 750,),
                                curve: Curves.bounceInOut);

                          }

                        },child: Icon(Icons.arrow_forward_ios,color: Mycolor,size: 17.sp,),)


                    ],
                  ),



                ],
              ),
            ),

          );
        },

      ),
    );
  }

  Widget onBoardingItem(OnBoardingModel onBoardingModel){
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding:  EdgeInsetsDirectional.only(top:80.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(onBoardingModel.image),
              Container(
                margin: EdgeInsetsDirectional.symmetric(vertical: 15.r),
                child: CustomTitleText(
                  text:  'Welcome'.tr(), textAlign: TextAlign.center,

                  color: Colors.white,

                ),
              ),

              MyText(
                  text:   onBoardingModel.title,
                  textAlign: TextAlign.center,
                  fontSize: 12.0.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),




            ],
          ),
        ),
      ),
    );
  }
}
