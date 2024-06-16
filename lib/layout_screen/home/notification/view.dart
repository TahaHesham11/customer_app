import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/layout_screen/home/notification/bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NotificationCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Notification'.tr(),

        ),

        body:  SingleChildScrollView(
          child: Column(
            children: [


              Padding(
                padding:  EdgeInsetsDirectional.only(top: 30.0.r),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index)=>const NotificationItem(),
                    separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
                    itemCount: 10),
              )

            ],
          ),
        ),
      ),
    );
  }
}
