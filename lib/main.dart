import 'package:customer_app/bloc_observer.dart';
import 'package:customer_app/generated/codegen_loader.g.dart';
import 'package:customer_app/layout_employee_screen/home/view.dart';
import 'package:customer_app/layout_screen/employees/bloc/cubit.dart';
import 'package:customer_app/layout_screen/mysubscribe/Reports/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/screen/Confirm_information/bloc/cubit.dart';
import 'package:customer_app/layout_screen/package/screen/details_package/screen/name_package/specialized_packages/bloc/cubit.dart';
import 'package:customer_app/modules/on_boarding/bloc/cubit.dart';
import 'package:customer_app/modules/splash_view/view.dart';
import 'package:customer_app/settings/bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';

import 'layout_employee_screen/home/bloc/cubit.dart';
import 'layout_employee_screen/home/screen/add_visit/bloc/cubit.dart';

void main()async{

  Bloc.observer=MyBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar','EG'),Locale('en','US'), ],
        path: 'assets/lang',
        fallbackLocale: const Locale('en','US'),
         assetLoader: const CodegenLoader(),

        startLocale: const Locale('ar','EG'),

        child: MyApp()  ,

      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static GlobalKey<NavigatorState> navigateKey = GlobalKey<NavigatorState>();

  static final BuildContext context = navigateKey.currentState!.context;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (BuildContext context) => SettingCubit()

          ),
          BlocProvider(
              create: (BuildContext context) => EmployeeHomeCubit()

          ),
          BlocProvider(
            create: (BuildContext context) => AddVisitCubit(),

          ),

          BlocProvider(
            create: (BuildContext context) => ReportCubit(),

          ),
          BlocProvider(
            create: (BuildContext context) => EmployeesCubit(),

          ),
          BlocProvider(
            create: (BuildContext context) => SpecializedPackageCubit(),

          ),
          BlocProvider(
            create: (BuildContext context) => ConfirmInformationCubit(),

          ),
        ],

        child: GetMaterialApp(
            navigatorKey: navigateKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
                fontFamily: 'Tajawal',

                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.white
                )
            ),
            debugShowCheckedModeBanner: false,
          home:SplashViewScreen()
        ),
      ),
    );
  }
}
