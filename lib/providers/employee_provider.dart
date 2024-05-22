import 'package:flutter/material.dart';
import 'package:front_end/model/employee.dart';

class Employee_Provider with ChangeNotifier {
  List<Employee> _employees = [];

  List<Employee> get employees {
    return [..._employees];
  }

  void addEmployee() {
    // _employees.add(value);
    notifyListeners();
  }
}
