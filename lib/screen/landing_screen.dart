import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front_end/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<Theme_Provider>(context);
    bool landscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/images/logo_1.png",
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0.0),
                  surfaceTintColor:
                      MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.transparent)),
              child: const Text("Log in")),
          ElevatedButton(onPressed: () {}, child: Text("Sign up")),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text("English")),
              Text(
                "|",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(onPressed: () {}, child: Text("العربية"))
            ],
          ),
          Switch.adaptive(
              value: !theme.isDarkTheme,
              thumbColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.yellow.shade700;
                }
                return Colors.grey;
              }),
              thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return const Icon(Icons.light_mode);
                }
                return const Icon(Icons.dark_mode);
              }),
              onChanged: (value) => theme.switch_theme(!value)),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.cyanAccent.withOpacity(0.6),
          Color.fromARGB(75, 64, 195, 255),
          Colors.transparent,
          Colors.blue.shade700.withOpacity(0.6),
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("description"),
                InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.cyanAccent.withOpacity(0.5),
                                      Colors.blueAccent.withOpacity(0.5),
                                      Colors.blue.shade700.withOpacity(0.5)
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Get Started",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600)),
                            ))
                        .animate()
                        .fadeIn(duration: 2.seconds, curve: Curves.easeInOut)
                        .moveY(curve: Curves.fastEaseInToSlowEaseOut))
              ],
            )),
            if (landscape)
              Image.asset("assets/images/landing_screen_middle_vector_2.png")
                  .animate(
                      onPlay: (controller) => controller.repeat(reverse: true))
                  .moveY(duration: 2.seconds, curve: Curves.easeInOut)
          ],
        ),
      ),
    );
  }
}
