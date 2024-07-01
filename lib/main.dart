import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front_end/View/HomePage2.dart';
import 'package:front_end/model/employee.dart';
import 'package:front_end/providers/employee_provider.dart';
import 'package:front_end/providers/theme_provider.dart';
import 'package:front_end/screen/AddEmoloyee.dart';
import 'package:front_end/screen/Employees.dart';
import 'package:front_end/screen/LeaderBoard.dart';
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
        builder: (context, child) => GetMaterialApp(
          title: 'Employees Scoring',
          theme: themeData(context),
          debugShowCheckedModeBanner: false,
          home: LeaderBoardPage(),
          // initialRoute: '/leaderboard',

          getPages: [
            GetPage(name: '/', page: () => HomeScreen()),
            GetPage(name: '/details', page: () => const AddEmployee()),
            GetPage(name: '/employeepage', page: () => EmployeePage()),
            GetPage(name: '/empprofilepage', page: () => ProfilePage()),
            GetPage(name: '/leaderboard', page: () => LeaderBoardPage()),
          ],
          // routes: {
          //   // HomeScreen.routeName: (ctx) => HomeScreen(),
          // },
        ),
      ),
    );
  }
}
