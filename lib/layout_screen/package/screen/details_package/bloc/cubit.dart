import 'package:customer_app/layout_screen/package/screen/details_package/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPackageCubit extends Cubit<DetailsPackageStates>{
  DetailsPackageCubit():super(DetailsPackageInitialState());

  static DetailsPackageCubit get(context)=>BlocProvider.of(context);
}