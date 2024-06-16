import 'package:customer_app/custom/show_dialog_item.dart';
import 'package:customer_app/layout_employee_screen/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../settings/view.dart';
import '../home/view.dart';
import '../visit/view.dart';

class EmployeeLayoutCubit extends Cubit<EmployeeLayoutStates>{
  EmployeeLayoutCubit() : super (EmployeeLayoutInitialState());

  static EmployeeLayoutCubit get(context)=>BlocProvider.of(context);


  int current =0;

  List<Widget> bottomScreen =
  [
    const EmployeeHomeScreen(),
    const EmployeeVisitScreen(),
    const SettingsScreen(),
  ];

  void changeBottom(index,context){

    current = index;

    emit(EmployeeLayoutShopChangeNavBarStateState());

  }


  void startDelayedAction(context) {
    Future.delayed(const Duration(seconds: 0), () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return ShowDialogItem(
            initialText: 'Allow notifications to be sent to receive all new updates',
            initialTitle: 'Notifications',
            initialImage: Image.asset('assets/images/notification.png'),
            onPressed: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ShowDialogItem(
                    initialText: 'Allow your location to be determined',
                    initialTitle: 'Location',
                    initialImage: Image.asset('assets/images/location_dialog.png'),
                    onPressed: () {
                      Navigator.pop(context); // Close the Location AlertDialog
                    },
                  );
                },
              );
            },
          );
        },
      );
    });


    emit(EmployeeHomeShowDialogState());

  }


}




