import 'package:customer_app/layout_employee_screen/home/screen/add_visit/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Define the states


class AddVisitCubit extends Cubit<AddVisitStates> {
  AddVisitCubit() : super(AddVisitInitialState());

  static AddVisitCubit get(context) => BlocProvider.of(context);

  final nameCompanyController = TextEditingController();
  final dateVisitController = TextEditingController();
  final visitController = TextEditingController();

  final pictureController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final specializationController = TextEditingController();
  final numberEmployeesController = TextEditingController();
  final commentsController = TextEditingController();
  final cardsController = TextEditingController();

  bool isClick = false;

  void isClickChange(bool value) {
    isClick = value;
    emit(AddVisitIsClickState(isClick));
  }
}