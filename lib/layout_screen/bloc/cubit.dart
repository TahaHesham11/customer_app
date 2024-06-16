import 'package:customer_app/custom/show_dialog_item.dart';
import 'package:customer_app/layout_screen/bloc/states.dart';
import 'package:customer_app/layout_screen/employees/view.dart';
import 'package:customer_app/layout_screen/mysubscribe/view.dart';
import 'package:customer_app/layout_screen/package/view.dart';
import 'package:customer_app/settings/view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/view.dart';

class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit() : super (LayoutInitialState());

  static LayoutCubit get(context)=>BlocProvider.of(context);


  int current =0;

  List<Widget> bottomScreen =
  [
     HomeScreen(),
     SubscribeScreen(),
    const PackageScreen(),
     EmployeesScreen(),
    const SettingsScreen(),
  ];

  void changeBottom(index,context){

    current = index;

    emit(LayoutShopChangeNavBarStateState());

  }



  void startDelayedAction(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
  }

}




