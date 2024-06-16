import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/employees/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesCubit extends Cubit<EmployeesStates> {
  EmployeesCubit() : super (EmployeesInitialState());

  static EmployeesCubit get(context)=>BlocProvider.of(context);

  final searchController = TextEditingController();

}