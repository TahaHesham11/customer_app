import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/screen/payment/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit():super(PaymentInitialState());

  static PaymentCubit get(context)=>BlocProvider.of(context);
}