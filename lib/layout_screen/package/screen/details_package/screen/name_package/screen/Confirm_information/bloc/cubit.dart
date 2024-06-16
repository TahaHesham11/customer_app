import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmInformationCubit extends Cubit<ConfirmInformationStates>{
  ConfirmInformationCubit():super(ConfirmInformationInitialState());

  static ConfirmInformationCubit get(context)=>BlocProvider.of(context);

  final cardNumberController = TextEditingController();
  final monthController = TextEditingController();
  final yearsController = TextEditingController();
  final verificationController = TextEditingController();
  bool isCheckBox =false ;

  void isCheck(){
    isCheckBox = !isCheckBox;

    emit(ConfirmInformationIsCheckState());
  }
}