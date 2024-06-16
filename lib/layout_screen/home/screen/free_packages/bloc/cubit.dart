import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/home/screen/free_packages/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FreePackageCubit extends Cubit<FreePackageStates>{
  FreePackageCubit():super (FreePackageInitialState());

  static FreePackageCubit get(context)=>BlocProvider.of(context);
}