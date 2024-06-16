import 'package:customer_app/core/view.dart';
import 'package:customer_app/custom/custom_form_field.dart';
import 'package:customer_app/custom/my_button.dart';
import 'package:customer_app/custom/my_text.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/bloc/states.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/screen/subscribe_now/screen/%20respond_soon/view.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../../constants/my_color.dart';

class SubscribeNowScreen extends StatelessWidget {
  const SubscribeNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = SpecializedPackageCubit.get(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Stack(
            children: [
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Image.asset('assets/images/Union.png')),
              Builder(builder: (context) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 30.0.r),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 17.sp,
                            ),
                          ),
                          MyText(
                            text: 'Custom packages'.tr(),
                            margin: EdgeInsetsDirectional.only(start: 75.r),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: MyText(
                              text: 'Apply for the customized package'.tr(),
                              margin: EdgeInsetsDirectional.only(
                                  start: 30.r, top: 10.r),
                            )),
                        CustomFormField(
                          controller: cubit.nameClientController,
                          type: TextInputType.name,
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 20.r),
                          label: 'customer name'.tr(),
                        ),
                        CustomFormField(
                          controller: cubit.phoneNumberController,
                          type: TextInputType.phone,
                          margin: EdgeInsetsDirectional.only(bottom: 20.r),
                          label: 'Mobile number'.tr(),
                        ),
                        CustomFormField(
                          controller: cubit.nameCompanyController,
                          type: TextInputType.number,
                          label: 'Company Name'.tr(),
                        ),
                        CustomFormField(
                          controller: cubit.CompanyBusinessController,
                          type: TextInputType.text,
                          label: 'Company business'.tr(),
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 20.r),
                        ),
                        CustomFormField(
                          controller: cubit.numberEmployeesController,
                          type: TextInputType.number,
                          label: 'Number of employees required'.tr(),
                        ),
                        CustomFormField(
                            controller: cubit.numberOfCardsController,
                            type: TextInputType.number,
                            label: 'The number of cards to be designed'.tr(),
                            margin: EdgeInsetsDirectional.symmetric(
                                vertical: 20.r)),
                        CustomFormField(
                          controller: cubit.picturesCardsController,
                          type: TextInputType.text,
                          label: 'Attach pictures of the cards'.tr(),
                          suffixImage: GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/images/image.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0.r, vertical: 20.r),
                          child: Row(
                            children: [
                              BlocBuilder<SpecializedPackageCubit,SpecializedPackageStates>(
                                builder: (context, state) {
                                  return Checkbox(
                                    activeColor: cubit.isCheckBox ? Mycolor : Colors.white,
                                    value: cubit.isCheckBox,
                                    onChanged: (value) {

                                      cubit.isChangeIsCheck();
                                    },
                                    splashRadius: 20,
                                    visualDensity: VisualDensity.compact,
                                  );
                                },
                              ),

                              MyText(
                                text:
                                    'I agree to the terms and conditions'.tr(),
                              )
                            ],
                          ),
                        ),
                        MyButton(
                          onPressed: () {
                            navigateTo(context, const RespondSoonScreen());
                          },
                          text: 'Next'.tr(),
                          margin: EdgeInsetsDirectional.only(bottom: 30.r),
                        )
                      ],
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
