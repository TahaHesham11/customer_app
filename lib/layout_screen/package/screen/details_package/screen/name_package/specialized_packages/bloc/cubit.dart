import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializedPackageCubit extends Cubit<SpecializedPackageStates>{
  SpecializedPackageCubit():super(SpecializedPackageInitialState());

  static SpecializedPackageCubit get(context)=>BlocProvider.of(context);

  final nameClientController = TextEditingController();

  final phoneNumberController = TextEditingController();

  final nameCompanyController = TextEditingController();

  final numberEmployeesController = TextEditingController();

  final numberOfCardsController = TextEditingController();

  final picturesCardsController = TextEditingController();

  final CompanyBusinessController = TextEditingController();

  bool isCheckBox =false;

  void isChangeIsCheck(){
    isCheckBox = !isCheckBox;
    emit(SpecializedPackageChangeCheckBoxState());
  }

}