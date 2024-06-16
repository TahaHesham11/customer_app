import 'package:customer_app/constants/my_color.dart';
import 'package:customer_app/layout_employee_screen/bloc/cubit.dart';
import 'package:customer_app/layout_employee_screen/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EmployeeLayoutScreen extends StatelessWidget {
  final bool employeeLayout;
  const EmployeeLayoutScreen({super.key,required this.employeeLayout});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => EmployeeLayoutCubit()..startDelayedAction(context),
      child: BlocConsumer<EmployeeLayoutCubit,EmployeeLayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = EmployeeLayoutCubit.get(context);
          return  Scaffold(


            body: cubit.bottomScreen[cubit.current],
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
              child: BottomNavigationBar(

                currentIndex: cubit.current,

                selectedItemColor: Mycolor,

                onTap: (index){
                 cubit.changeBottom(index, context);
                },
                items: [

                  BottomNavigationBarItem(
                    icon: cubit.current == 0
                        ? CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Mycolor,
                      child: Image.asset(
                        'assets/images/home.png',
                        color: Colors.white,
                        width: 25.w,
                        height: 25.h,
                      ),
                    )
                        : Image.asset(
                      'assets/images/home.png',
                      color: Colors.black,
                      width: 25.w,
                      height: 25.h,
                    ),
                    label: '',
                  ),


                  BottomNavigationBarItem(
                    icon: cubit.current == 1
                        ? CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Mycolor,
                      child: Image.asset(
                        'assets/images/visit.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/visit.png',
                      color: Colors.black,
                      width: 25.w,
                      height: 25.h,
                    ),
                    label: '',
                  ),


                  BottomNavigationBarItem(
                    icon: cubit.current == 2
                        ? CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Mycolor,
                      child: Image.asset(
                        'assets/images/profile.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/profile.png',
                      color: Colors.black,
                      width: 25.w,
                      height: 25.h,
                    ),
                    label: '',
                  )

                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
