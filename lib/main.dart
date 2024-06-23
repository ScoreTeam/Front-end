import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front_end/providers/employee_provider.dart';
import 'package:front_end/providers/theme_provider.dart';
import 'package:front_end/screen/AddEmoloyee.dart';
import 'package:front_end/screen/ProfilePage.dart';
import 'package:front_end/screen/landing_screen.dart';
import '/screen/home_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      ensureScreenSize: true,
      useInheritedMediaQuery: true,
      child: MultiProvider(
        providers: [ChangeNotifierProvider.value(value: Theme_Provider())],
        builder: (context, child) => MaterialApp(
          title: 'Employees Scoring',
          theme: themeData(context),
          debugShowCheckedModeBanner: false,
          home: AddEmployee(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
          },
        ),
      ),
    );
  }
}
