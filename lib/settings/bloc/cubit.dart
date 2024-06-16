import 'package:customer_app/settings/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingStates>{
  SettingCubit() : super (SettingInitialState());

  static SettingCubit get(context)=>BlocProvider.of(context);


  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();


  final nameContactController = TextEditingController();
  final phoneContactController = TextEditingController();
  final detailsContactController = TextEditingController();
  final messageContactController = TextEditingController();


}


