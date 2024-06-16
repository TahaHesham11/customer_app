import 'package:customer_app/layout_screen/home/notification/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationCubit extends Cubit<NotificationStates>{
  NotificationCubit() : super (NotificationInitialState());

  static NotificationCubit get(context)=>BlocProvider.of(context);
}