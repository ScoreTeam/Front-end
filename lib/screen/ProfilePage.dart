// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:front_end/providers/theme_provider.dart';
import 'package:front_end/widget/menu_drawer_tab.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart' as pc;
import 'package:provider/provider.dart';
import '../theme/theme.dart';

ZoomDrawerController zoomDrawerController = ZoomDrawerController();
List<String> titleList = [
  "Total points",
  "Points this month",
  "Points this day",
  "Services",
  "Bonus points"
];
List<String> dataList = ["30,000", "5,900", "1,200", "21", "+900"];
Map<String, double> dataMap = {
  "Attended": 21,
  "Missed": 3,
  "Vacation": 5,
  "Excused": 2,
};
final colorList = <Color>[
  Colors.greenAccent,
  Colors.red,
  Colors.black,
  Colors.orange,
];

class ProfilePage extends GetView<MyDrawerController2> {
  static const routeName = "/profilePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        menuScreenWidth: MediaQuery.of(context).size.width,
        mainScreenScale: 0.1,
        controller: zoomDrawerController,
        showShadow: true,
        openCurve: Curves.easeInOut,
        mainScreenTapClose: true,
        moveMenuScreen: false,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: 230.0.spMin,
        // overlayBlend: BlendMode.overlay,
        mainScreen: MainScreen(),
        menuScreen: MenuScreen(),
        androidCloseOnBackTap: true,
        clipMainScreen: true,
      ),
    );
  }
}

class MainScreen extends GetView<MyDrawerController2> {
  List<PieChartSectionData> pieChartSections = [
    PieChartSectionData(
      color: Colors.red,
      value: 25,
      title: 'Data 1',
      radius: 60,
      showTitle: true,
      titleStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),

      // titledPercentageTextStyle: const TextStyle(
      //   color: Colors.white,
      //   fontWeight: FontWeight.bold,
      //   fontSize: 14,
      // ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: zoomDrawerController.open),
          title: Container(
            // color: Colors.red,
            child: Container(
              // color: Colors.red,
              height: 116,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          // width: 150,

                          child: Container(
                            height: 80,
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 40),
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(top: 15.0),
                                hintText: 'Search...',
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 3.0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // height: 70,
                          padding: EdgeInsets.only(top: 40),
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // height: 70,
                          padding: EdgeInsets.only(top: 40),
                          child: IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        // Center(
                        //   child: ClipOval(
                        //     child: Image.asset(
                        //       "assets/images/user_pic.jpg",
                        //       fit: BoxFit.cover,
                        //       width: 75.0,
                        //       height: 100.0,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * (0.035),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/user_pic.jpg',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: (MediaQuery.of(context).size.height / 2) - 2,
                  // width: MediaQuery.of(context).size.width - 450,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.blue, width: 2),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 25),
                          Text(
                            "${titleList[0]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "${dataList[0]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                // noore note: in here we will put an if to determine if its rising or not
                                // this will be an extra api hamza and nour will make for us
                                Icons.trending_up,
                                color: const Color.fromARGB(255, 53, 240, 59),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${titleList[1]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "${dataList[1]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                // noore note: in here we will put an if to determine if its rising or not
                                // this will be an extra api hamza and nour will make for us
                                Icons.trending_up,
                                color: const Color.fromARGB(255, 53, 240, 59),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "${titleList[2]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "${dataList[2]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                // noore note: in here we will put an if to determine if its rising or not
                                // this will be an extra api hamza and nour will make for us
                                Icons.trending_down,
                                color: Color.fromARGB(255, 240, 53, 53),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${titleList[3]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "${dataList[3]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                // noore note: in here we will put an if to determine if its rising or not
                                // this will be an extra api hamza and nour will make for us
                                Icons.trending_up,
                                color: const Color.fromARGB(255, 53, 240, 59),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                width: 20,
              ),
              // Container(
              //   color: Colors.red,
              // child:
              // Text("fe"),
              // ),
              Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 30,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,      
                          children: [
                            Text(
                              'Noore Sabah',
                              style: GoogleFonts.openSans(
                                fontSize: 32, 
                                fontWeight: FontWeight.w700, // Bold
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Al-sadon',
                              style: GoogleFonts.sourceSans3(
                                fontSize: 30, 
                                fontWeight: FontWeight.w400, // Regular
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Damascus',
                              style: GoogleFonts.roboto(
                                fontSize: 30, 
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Phone: 0962298023',
                              style: GoogleFonts.montserrat(
                                fontSize: 28, 
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Working Hours: 8am - 5pm',
                              style: GoogleFonts.ubuntu(
                                fontSize: 28, 
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // Container(
                        //   height: 10,
                        //   width: 10,
                        //   child: Image.asset(
                        //     "assets/images/ff.jpg",
                        //     fit: BoxFit.fill,
                        //   ),
                        // )
                        SizedBox(
                          width: MediaQuery.of(context).size.width * (0.3),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          child: pc.PieChart(
                            dataMap: dataMap,
                            animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 32,
                            chartRadius:
                                MediaQuery.of(context).size.width / 3.2,
                            colorList: colorList,
                            initialAngleInDegree: 0,
                            chartType: pc.ChartType.ring,
                            ringStrokeWidth: 32,
                            centerText: "HYBRID",
                            legendOptions: pc.LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: pc.LegendPosition.right,
                              showLegends: true,
                              legendShape: BoxShape.circle,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            chartValuesOptions: pc.ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 1,
                            ),
                            // gradientList: ---To add gradient colors---
                            // emptyColorGradient: ---Empty Color gradient---
                          ),
                          //     PieChart(
                          //   PieChartData(
                          //     pieTouchData: PieTouchData(
                          //       touchCallback: (FlTouchEvent event,
                          //           pieTouchResponse) {}, // Empty callback to avoid null check
                          //     ),
                          //     borderData: FlBorderData(
                          //       show: false,
                          //     ),
                          //     sections: pieChartSections,
                          //     centerSpaceRadius: 40,
                          //     // animateSections: false, // Disable animation
                          //   ),
                          // )
                        )
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * (0.45),
                            width: MediaQuery.of(context).size.width * (0.75),
                            // child: Image.asset(
                            //   "assets/images/ff.jpg",
                            //   fit: BoxFit.fill,
                            // ),
                            child: LineChart(
                              SampleLineChartData(),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Alignment> firstAlignment;
  late Animation<Alignment> secondAlignment;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 20));
    firstAlignment = TweenSequence<Alignment>([
      TweenSequenceItem(
          tween: Tween(begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1),
    ]).animate(animationController);

    secondAlignment = TweenSequence<Alignment>([
      TweenSequenceItem(
          tween: Tween(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
    ]).animate(animationController);

    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<Theme_Provider>(context);

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, widget) {
        return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:
                    theme.isDarkTheme ? kDrawerDarkModeBG : kDrawerLightModeBG,
                begin: firstAlignment.value,
                end: secondAlignment.value,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset("assets/images/user_pic.jpg",
                                  height: 150, width: 150)),
                          // Text(
                          //   "User Name",
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          Switch.adaptive(
                              value: !theme.isDarkTheme,
                              thumbColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.yellow.shade700;
                                }
                                return Colors.grey;
                              }),
                              thumbIcon:
                                  MaterialStateProperty.resolveWith<Icon?>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return const Icon(Icons.light_mode);
                                }
                                return const Icon(Icons.dark_mode);
                              }),
                              onChanged: (value) => theme.switch_theme(!value)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(children: [
                          MenuDrawerTab(
                              tab_icon: Icons.home_outlined,
                              tab_name: "Home Page",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.photo_camera_outlined,
                              tab_name: "Check attendence",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.video_camera_front_outlined,
                              tab_name: "Security Cameras",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.supervisor_account,
                              tab_name: "Employees",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.leaderboard_outlined,
                              tab_name: "Leaderboard",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.settings_accessibility_outlined,
                              tab_name: "Point System",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.admin_panel_settings_outlined,
                              tab_name: "Admin account",
                              tab_action: () {}),
                          MenuDrawerTab(
                              tab_icon: Icons.analytics_outlined,
                              tab_name: "Analytics",
                              tab_action: () {}),
                        ]),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Log out",
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                                color: theme.isDarkTheme
                                    ? Colors.white
                                    : Colors.black))),
                        elevation: MaterialStatePropertyAll(0.0),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent)))
              ],
            ));
      },
    );
  }
}

class MyDrawerController2 extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}

class CustomSearchBar extends SearchDelegate<String> {
  CustomSearchBar({String? initialQuery}) {
    this.query = initialQuery ?? '';
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: theme.appBarTheme.copyWith(),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isNotEmpty) {
      return Center(
        child: Text(
          'Search results for "$query"',
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}

LineChartData SampleLineChartData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) => const FlLine(
        color: Colors.grey,
        strokeWidth: 1,
      ),
      getDrawingVerticalLine: (value) => const FlLine(
        color: Colors.grey,
        strokeWidth: 1,
      ),
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: (value, meta) => Text(
            [
              'Jan',
              'Feb',
              'Mar',
              'Apr',
              'May',
              'Jun',
              'Jul',
              'Aug',
              'Sep',
              'Oct',
              'Nov',
              'Dec'
            ][value.toInt()],
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 2,
          getTitlesWidget: (value, meta) {
            if (value == 0) {
              return Text('0',
                  style: const TextStyle(color: Colors.black, fontSize: 12));
            } else {
              return Text((value * 2).toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 12));
            }
          },
        ),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    ),
    borderData:
        FlBorderData(show: true, border: Border.all(color: Colors.grey)),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 10,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0, 3),
          FlSpot(1, 5),
          FlSpot(2, 6),
          FlSpot(3, 4),
          FlSpot(4, 8),
          FlSpot(5, 2),
          FlSpot(6, 7),
          FlSpot(7, 1),
          FlSpot(8, 9),
          FlSpot(9, 5),
          FlSpot(10, 3),
          FlSpot(11, 2),
        ],
        isCurved: true,
        barWidth: 2,
        color: Colors.blue,
        dotData: const FlDotData(
          show: false,
        ),
      ),
    ],
  );
}
