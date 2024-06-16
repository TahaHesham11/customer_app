import 'package:customer_app/layout_screen/mysubscribe/screen/add_company/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCompanyCubit extends Cubit<AddCompanyStates>{

  AddCompanyCubit():super(AddCompanyInitialState());

static AddCompanyCubit get(context)=>BlocProvider.of(context);


  final nameCompanyController = TextEditingController();
  final companyBusinessController = TextEditingController();
  final companyLogoController = TextEditingController();
  final areaAddressController = TextEditingController();
  final cityAddressController = TextEditingController();
  final neighborhoodAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
}