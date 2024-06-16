import 'package:customer_app/layout_screen/package/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackageCubit extends Cubit<PackageStates>{
  PackageCubit():super(PackageInitialState());

  static PackageCubit get(context)=>BlocProvider.of(context);
}