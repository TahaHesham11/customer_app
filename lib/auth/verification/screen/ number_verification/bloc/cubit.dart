import 'package:customer_app/auth/verification/screen/%20number_verification/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationCubit extends Cubit<VerificationStates>{
  VerificationCubit() : super(VerificationInitialState());

  static VerificationCubit get(context)=>BlocProvider.of(context);

  final verificationNumber = TextEditingController();

}