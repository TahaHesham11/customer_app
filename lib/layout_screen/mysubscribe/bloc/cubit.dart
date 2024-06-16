import 'package:bloc/bloc.dart';
import 'package:customer_app/layout_screen/mysubscribe/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MySubscribeCubit extends Cubit<MySubscribeStates>{

  MySubscribeCubit():super(MySubscribeInitialState());

static MySubscribeCubit get(context)=>BlocProvider.of(context);
}