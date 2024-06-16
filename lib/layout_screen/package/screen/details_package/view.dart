import 'package:customer_app/layout_screen/package/screen/details_package/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/components/pacakage_details_item.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/view.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/view.dart';
import '../../../../../custom/custom_app_bar.dart';

class DetailsPackage extends StatelessWidget {
  const DetailsPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>DetailsPackageCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
            title: 'Name Package'.tr(),
            image: IconButton(
              onPressed: (){
                navigateTo(context, NamePackageScreen());
              },
              icon: Image.asset('assets/images/categoties.png',),
            )
        ),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.all(12.0.r),
            child: Column(
              children: [
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                return PackageDetailsItem();
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
