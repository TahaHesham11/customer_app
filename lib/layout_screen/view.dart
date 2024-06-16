import 'package:customer_app/layout_screen/bloc/cubit.dart';
import 'package:customer_app/layout_screen/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/my_color.dart';

class LayoutScreen extends StatelessWidget {
 final bool isLayout ;
  const LayoutScreen({super.key,required this.isLayout});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LayoutCubit()..startDelayedAction(context),
      child: BlocConsumer<LayoutCubit,LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = LayoutCubit.get(context);
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
                        'assets/images/subscription.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/subscription.png',
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
                        'assets/images/package.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/package.png',
                      color: Colors.black,
                      width: 25.w,
                      height: 25.h,
                    ),
                    label: '',
                  ),

                  BottomNavigationBarItem(
                    icon: cubit.current == 3
                        ? CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Mycolor,
                      child: Image.asset(
                        'assets/images/employee.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/employee.png',
                      color: Colors.black,
                      width: 25.w,
                      height: 25.h,
                    ),
                    label: '',
                  ),


                  BottomNavigationBarItem(
                    icon: cubit.current == 4
                        ? CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Mycolor,
                      child: Image.asset(
                        'assets/images/menu.png',
                        color: Colors.white,
                      ),
                    )
                        : Image.asset(
                      'assets/images/menu.png',
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
