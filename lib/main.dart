import 'package:flutter/material.dart';
import 'package:tharad/core/logic/helper_methods.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/views/splash.dart';

void main() {
  runApp( const TharadApp());
}

class TharadApp extends StatelessWidget {
  const TharadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390.0, 844.0),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navKey,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: TextTheme(
              titleLarge: TextStyle(color: Color(0xff0D1D1E)),
              titleMedium: TextStyle(color:Color(0xff0D1D1E)),
              titleSmall: TextStyle(color: Color(0xff0D1D1E)),
            ),
            appBarTheme: AppBarTheme(

              titleTextStyle: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,

              ),
            ),
            fontFamily:"Tajawal",
          ),
          home: SplashView(),
        );
      },
    );
  }
}
