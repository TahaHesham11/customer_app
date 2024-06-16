import 'package:customer_app/auth/verification/screen/%20number_verification/screen/Reset_password/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates>{
  ResetPasswordCubit() : super(ResetPasswordInitialState());

  static ResetPasswordCubit get(context)=>BlocProvider.of(context);


  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
}