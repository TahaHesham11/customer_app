import 'package:bloc/bloc.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:customer_app/layout_screen/mysubscribe/screen/add_employee/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddEmployeeCubit extends Cubit<AddEmployeeStates>{

  AddEmployeeCubit():super(AddEmployeeInitialState());

static AddEmployeeCubit get(context)=>BlocProvider.of(context);


  final chooseCompanyController = TextEditingController();

  final idNumberController = TextEditingController();

  final nameCompanyController = TextEditingController();

  final companyLogoController = TextEditingController();

  final employeeNameController = TextEditingController();

  final employeePhotoController = TextEditingController();

  final employeeSpecialtyController = TextEditingController();

  final phoneNumberController = TextEditingController();

  final emailController = TextEditingController();

  final employeeInformationController = TextEditingController();

  final passwordController = TextEditingController();

  SwiperController swiperController = SwiperController();

  bool isCheckBox = false;

  void changeIsCheck (value){
    isCheckBox = value;
    emit(AddEmployeeChangeIsCheckState());
  }

}