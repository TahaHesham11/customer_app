import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamePackageCubit extends Cubit<NamePackageStates>{
  NamePackageCubit():super(NamePackageInitialState());

  static NamePackageCubit get(context)=>BlocProvider.of(context);
}