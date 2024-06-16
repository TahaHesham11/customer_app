import 'package:customer_app/layout_employee_screen/visit/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeVisitCubit extends Cubit<EmployeeVisitStates>{
  EmployeeVisitCubit() : super (EmployeeVisitStatesInitialState());

  static EmployeeVisitCubit get(context)=>BlocProvider.of(context);



}


