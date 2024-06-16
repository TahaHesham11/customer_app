import 'package:customer_app/auth/register/screen/verification_phone/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationPhoneCubit extends Cubit<VerificationPhoneStates>{
  VerificationPhoneCubit() : super (VerificationPhoneInitialState());

  static VerificationPhoneCubit get(context)=>BlocProvider.of(context);


  final verificationPhoneController = TextEditingController();

}


