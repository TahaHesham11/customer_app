import 'package:customer_app/layout_screen/mysubscribe/visit/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisitCubit extends Cubit<VisitStates>{

  VisitCubit():super(VisitStatesInitialState());

static VisitCubit get(context)=>BlocProvider.of(context);
}