import 'package:brandy_flutter1/config/themes/themes.dart';
import 'package:brandy_flutter1/features/layout/ui/screens/layout_screen.dart';
import 'package:brandy_flutter1/features/views/login_register.dart';
import 'package:brandy_flutter1/features/views/login_screen.dart';
//import 'package:brandy_flutter1/views/home1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: Style.lightTheme,
        debugShowCheckedModeBanner: false,
        home: LoginRegister(),
      ),
    );
  }
}
