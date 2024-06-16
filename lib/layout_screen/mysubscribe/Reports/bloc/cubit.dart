import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/mysubscribe/Reports/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportCubit extends Cubit<ReportStates>{

  ReportCubit():super(ReportInitialState());

static ReportCubit get(context)=>BlocProvider.of(context);



  bool isShowCheckBox = false;
  bool isCheckBox = false;
  bool checkBox = false;
  bool box = false;

  bool isClick = false;

  void isClickChange(bool value) {
    isClick = value;
    emit(ReportIsClickState(isClick));
  }
}