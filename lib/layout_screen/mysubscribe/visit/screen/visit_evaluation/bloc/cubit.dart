import 'package:customer_app/layout_employee_screen/home/screen/add_visit/visit_evaluation/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisitEvaluationCubit extends Cubit<VisitEvaluationInitialState>{
  VisitEvaluationCubit() : super (VisitEvaluationInitialState());

  static VisitEvaluationCubit get(context)=>BlocProvider.of(context);


}


