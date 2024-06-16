
import 'package:customer_app/auth/register/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit() : super (RegisterInitialState());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  bool isPassword = true;
  bool isConfirmPassword = true;
  final confirmController =TextEditingController();

  bool isCheckBox =false;
  bool isPersonCheckBox =false;
  bool isCompanyCheckBox =false;


  void changeIsPassword(){

    isPassword = !isPassword;

    emit(RegisterChangePasswordState());

  }

  void changeIsConfirmPassword(){

    isConfirmPassword = !isConfirmPassword;

    emit(RegisterChangeConfirmPasswordState());

  }

  void isChangeIsCheck(){
  isCheckBox = !isCheckBox;
  emit(ChangeIsCheckBoxState());
}


  void toggleCheckbox(String checkboxType) {
    if (checkboxType == 'person') {
      isPersonCheckBox = true;
      isCompanyCheckBox = false;
    } else {
      isPersonCheckBox = false;
      isCompanyCheckBox = true;
    }
    emit(ChangeCheckboxStateState());
  }

}


