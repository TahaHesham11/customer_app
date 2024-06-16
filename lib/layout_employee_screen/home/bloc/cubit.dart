import 'package:customer_app/layout_employee_screen/home/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeHomeCubit extends Cubit<EmployeeHomeStates>{
  EmployeeHomeCubit() : super (EmployeeHomeInitialState());

  static EmployeeHomeCubit get(context)=>BlocProvider.of(context);




}


