// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 184, 238),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image.asset("images/Logo.png", fit: BoxFit.fill),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Check Employee",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.video_camera_front_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Security Cameras",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.supervisor_account,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Employees",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.leaderboard_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Leaderboard",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.settings_accessibility_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Point System",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.admin_panel_settings_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Admin",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print("fef");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.analytics_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Analytics",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'PoetsenOne',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                    height: 2,
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5)),
                SizedBox(
                  height: 140,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Help",
                            style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.bold,
                                // fontFamily: 'PoetsenOne',
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Updates",
                            style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.bold,
                                // fontFamily: 'PoetsenOne',
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.bold,
                                // fontFamily: 'PoetsenOne',
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                ),
                          ),
                          onSubmitted: (query) {
                            showSearch(
                              context: context,
                              delegate: CustomSearchBar(initialQuery: query),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: ClipOval(
                          child: Image.asset(
                            "images/test.jpg",
                            fit: BoxFit.cover,
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
