import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_app_bar.dart';
import 'package:customer_app/layout_screen/package/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/view.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/components/package_item.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>PackageCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          isBack: false,
          title: 'Package'.tr(),
          image: IconButton(
            onPressed: (){
              navigateTo(context, DetailsPackage());
            },
            icon: Image.asset('assets/images/categoties.png',),
          )
        ),

        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.all(15.0.r),
            child: Column(
              children: [

                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0.h,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1 / 1.3,
            ),
                    itemBuilder: (context, index) {
                      return PackageItem();
                    },
                itemCount: 10,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
