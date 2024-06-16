import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/package_terms/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackageTermsCubit extends Cubit<PackageTermsStates>{
  PackageTermsCubit():super(PackageTermsInitialState());

  static PackageTermsCubit get(context)=>BlocProvider.of(context);
}