import 'package:customer_app/auth/login/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super (LoginInitialState());

 static LoginCubit get(context)=>BlocProvider.of(context);

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPassword = true;


  void changeIsPassword(){

    isPassword = !isPassword;

    emit(LoginChangePasswordState());

  }


}


