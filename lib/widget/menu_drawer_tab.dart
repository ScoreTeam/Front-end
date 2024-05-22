import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front_end/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class MenuDrawerTab extends StatelessWidget {
  String tab_name;
  IconData tab_icon;
  void Function() tab_action;

  MenuDrawerTab(
      {required this.tab_icon,
      required this.tab_name,
      required this.tab_action});

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<Theme_Provider>(context);
    return ListTile(
      onTap: tab_action,
      leading: Icon(
        tab_icon,
        color: theme.isDarkTheme ? Colors.white : Colors.black,
      ),
      title: Text(
        tab_name,
        style: TextStyle(
          color: theme.isDarkTheme ? Colors.white : Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
