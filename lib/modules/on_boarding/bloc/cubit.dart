import 'package:customer_app/modules/on_boarding/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates>{
  OnBoardingCubit():super(OnBoardingInitialState());

  static OnBoardingCubit get(context)=>BlocProvider.of(context);



  List<OnBoardingModel> boarding =[
    OnBoardingModel(
        image: 'assets/images/Object.png',
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحة'
    ),
    OnBoardingModel(
        image: 'assets/images/Object 3.png',
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحةe'
    ),
    OnBoardingModel(
        image: 'assets/images/Object 2.png',
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحة'
    )
  ];

  final boardController = PageController();
  bool isLast = false;
}

