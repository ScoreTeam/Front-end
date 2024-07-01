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
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
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

class LeaderBoardPage extends GetView<MyDrawerController2> {
  static const routeName = "/leaderboardpage";

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
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 3.0),
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
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  // number one
                  Container(
                      // height: MediaQuery.of(context).size.height/1.2,
                      // height: MediaQuery.of(context).size.height-30,
                      height: 600,
                      width: 300,
                      // padding: EdgeInsets.all(70),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 208, 0), width: 5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          // Container(
                          //     height: 50,
                          //     width: 50,
                          //     child: Image.asset("assets/images/number1.png")),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/number1.png"))
                                // borderRadius:
                                //     BorderRadius.circular(360),
                                // border: Border.all(
                                //   color:Colors.yellow,
                                //           width:  6),
                                ),
                          ),
                          Container(
                            // decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //   border: Border.all(
                            //       // color: Color.fromARGB(255, 255, 255, 255),
                            //       width: 3),
                            // ),
                            padding: EdgeInsets.all(10),
                            child:
                                //  Image.asset(
                                //   "assets/images/userpic2.jpg",
                                //   fit: BoxFit.fill,
                                // )
                                Container(
                              height: 250,
                              width: 250,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage("assets/images/userpic2.jpg"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.yellow,
                            height: 2,
                            endIndent: 10,
                            indent: 10,
                            thickness: 4,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Emma watson",
                            // style: TextStyle(
                            //     fontSize: 30, fontWeight: FontWeight.bold),
                            style: GoogleFonts.openSans(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "20050",
                            style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700, // Bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Colors.yellow,
                            height: 2,
                            endIndent: 10,
                            indent: 10,
                            thickness: 4,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 3),
                      color: const Color.fromARGB(255, 121, 213, 255),
                    ),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    width: 500,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 80,
                                padding: EdgeInsets.all(10),
                                // color: Colors.blue,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(360),
                                        border: Border.all(
                                            //  Colors.white
                                            color: index == 0
                                                ? Color.fromARGB(
                                                    255, 174, 174, 174)
                                                : index == 1
                                                    ? Color.fromARGB(
                                                        255, 189, 76, 0)
                                                    : Color.fromARGB(
                                                        255, 255, 255, 255),
                                            width: index == 0
                                                ? 5
                                                : index == 1
                                                    ? 5
                                                    : 2.8),
                                      ),
                                      child: Text(
                                        " ${index + 2} ",
                                        style: TextStyle(
                                            color: index == 0
                                                ? Color.fromARGB(
                                                    255, 194, 194, 194)
                                                : index == 1
                                                    ? Color.fromARGB(
                                                        205, 127, 50, 0)
                                                    : Color.fromARGB(
                                                        255, 255, 255, 255),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    VerticalDivider(
                                      color: index == 0
                                          ? Color.fromARGB(255, 194, 194, 194)
                                          : index == 1
                                              ? Color.fromARGB(205, 127, 50, 0)
                                              : Color.fromARGB(
                                                  255, 255, 255, 255),
                                      width: 3,
                                      thickness: 3,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(360),
                                      //   color: Colors.black
                                      //   // border: Border.all(color: Colors.black)
                                      // ),
                                      height: 75,
                                      width: 75,
                                      child: CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            "assets/images/userpic3.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Employee name",
                                      // style: TextStyle(
                                      //     fontSize: 30,
                                      //     fontWeight: FontWeight.bold),
                                      style: GoogleFonts.openSans(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700, // Bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1404",
                                      style: GoogleFonts.openSans(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                height: 2,
                                thickness: 3.5,
                                endIndent: 10,
                                indent: 10,
                              )
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  //     Container(
                  //       height: 1000,
                  //       width: 550,
                  //       // color: Colors.green,
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           SizedBox(height: 25),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Container(
                  //                 child: Text(
                  //                   "${titleList[0]}",
                  //                   style: TextStyle(
                  //                     fontSize: 30,
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //               ),
                  //               SizedBox(width: 20),
                  //               Text(
                  //                 "${dataList[0]}",
                  //                 style: TextStyle(
                  //                   fontSize: 40,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               // SizedBox(width: 10),
                  //               // Icon(
                  //               //   size: 50,
                  //               //   Icons.trending_up,
                  //               //   color: const Color.fromARGB(255, 53, 240, 59),
                  //               // ),
                  //             ],
                  //           ),
                  //           SizedBox(height: 20),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "${titleList[1]}",
                  //                 style: TextStyle(
                  //                   fontSize: 30,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(width: 20),
                  //               Text(
                  //                 "${dataList[1]}",
                  //                 style: TextStyle(
                  //                   fontSize: 40,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               //
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 20,
                  //           ),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "${titleList[2]}",
                  //                 style: TextStyle(
                  //                   fontSize: 30,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(width: 20),
                  //               Text(
                  //                 "${dataList[2]}",
                  //                 style: TextStyle(
                  //                   fontSize: 40,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(width: 10),
                  //               Icon(
                  //                 size: 50,
                  //                 Icons.trending_down,
                  //                 color: Color.fromARGB(255, 240, 53, 53),
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(height: 20),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "${titleList[3]}",
                  //                 style: TextStyle(
                  //                   fontSize: 30,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(width: 20),
                  //               Text(
                  //                 "${dataList[3]}",
                  //                 style: TextStyle(
                  //                   fontSize: 40,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(width: 10),
                  //               Icon(
                  //                 size: 50,
                  //                 Icons.trending_up,
                  //                 color: const Color.fromARGB(255, 53, 240, 59),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //       // child:
                  //     ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 3),
                      color: Color.fromARGB(255, 0, 254, 17),
                    ),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    width: 500,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 80,
                                padding: EdgeInsets.all(10),
                                // color: Colors.blue,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(360),
                                        border: Border.all(
                                          width: 2,
                                          //  Colors.white
                                          // color: Color.fromARGB(
                                          //     255, 255, 255, 255),
                                          color: index == 0
                                              ? Colors.yellow
                                              : index == 1
                                                  ? const Color.fromARGB(
                                                      255, 139, 139, 139)
                                                  : index == 2
                                                      ? Color.fromARGB(
                                                          255, 189, 76, 0)
                                                      : Colors.white,
                                        ),
                                      ),
                                      child: Text(
                                        " ${index + 1} ",
                                        style: TextStyle(
                                            color: index == 0
                                                ? Colors.yellow
                                                : index == 1
                                                    ? const Color.fromARGB(
                                                        255, 139, 139, 139)
                                                    : index == 2
                                                        ? Color.fromARGB(
                                                            255, 189, 76, 0)
                                                        : Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    VerticalDivider(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      width: 3,
                                      thickness: 3,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(360),
                                      //   color: Colors.black
                                      //   // border: Border.all(color: Colors.black)
                                      // ),
                                      height: 75,
                                      width: 75,
                                      child: CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            "assets/images/userpic5.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Employee name",
                                      // style: TextStyle(
                                      //     fontSize: 30,
                                      //     fontWeight: FontWeight.bold),
                                      style: GoogleFonts.openSans(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700, // Bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "59309",
                                      style: GoogleFonts.openSans(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                height: 2,
                                thickness: 3.5,
                                endIndent: 10,
                                indent: 10,
                              )
                            ],
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
