
import 'package:customer_app/core/view.dart';
import 'package:customer_app/modules/on_boarding/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewScreen extends StatefulWidget {
  const SplashViewScreen({super.key});

  @override
  State<SplashViewScreen> createState() => _SplashViewScreenState();
}

class _SplashViewScreenState extends State<SplashViewScreen> {
  @override
  void initState() {
    super.initState();
    startDelayedAction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                'assets/images/UP (1).png',
                width: 265.w,
                height: 252.h,
                fit: BoxFit.cover,

              ),
            ),
            Center(
              child: Image.asset('assets/images/logo.png'),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Image.asset(
                'assets/images/DOWN.png',
                width: 265.w,
                height: 252.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startDelayedAction() {
    Future.delayed(const Duration(seconds: 5), () {
     navigateAndFinish(context, const OnBoardingScreen());
    });
  }
}
