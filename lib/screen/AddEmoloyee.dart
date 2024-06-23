// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

DateTime _selectedDate = DateTime.now();

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee>
    with SingleTickerProviderStateMixin {
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
        actions: [Image.asset("assets/images/Logo1.png")],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.person, color: Colors.blue),
              child: Text(
                "Personal Info",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.work, color: Colors.blue),
              child: Text(
                "Job Info",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.image, color: Colors.blue),
              child: Text(
                "Photos",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PagePersonalInfoPage(),
          PageWorkInfoPage(),
          PagePhotosPage(),
        ],
      ),
    );
  }

  Widget PagePersonalInfoPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'First Name',
              labelStyle: GoogleFonts.sourceSans3(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          TextField(
            decoration: InputDecoration(
              labelText: 'Last Name',
              labelStyle: GoogleFonts.sourceSans3(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: GoogleFonts.sourceSans3(
                fontSize: 16, 
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          TextField(
            decoration: InputDecoration(
              labelText: 'Phone',
              labelStyle: GoogleFonts.sourceSans3(
                fontSize: 16, 
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          TextField(
            decoration: InputDecoration(
              labelText: 'Address',
              labelStyle: GoogleFonts.sourceSans3(
                fontSize: 16, 
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text('Selected Date: ${_selectedDate.toIso8601String()}'),
          Row(
            children: [
              Container(
                width: 75,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate.day}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 100,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate.month}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 150,
                height: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate.year}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 150,
                height: 100,
                alignment: Alignment.center,
                child: ElevatedButton(
                  // style: ButtonStyle(
                  //   backgroundColor:
                  //       MaterialStateProperty.all<Color>(Colors.white),
                  //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(100),
                  //       side: BorderSide(color: Colors.blue, width: 2.5),
                  //     ),
                  //   ),
                  // ),
                  onPressed: _selectDate,
                  child: Text(
                    "Pick a date",
                    style: GoogleFonts.sourceSans3(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          // ElevatedButton(
          //   onPressed: _showDatePicker,
          //   child: Text('Select Date'),
          // ),
        ],
      ),
    );
  }

  Widget PageWorkInfoPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: 'Position')),
          TextField(decoration: InputDecoration(labelText: 'Department')),
          TextField(decoration: InputDecoration(labelText: 'Salary')),
          TextField(decoration: InputDecoration(labelText: 'Start Date')),
        ],
      ),
    );
  }

  Widget PagePhotosPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PageImagePickerSquare(),
          PageImagePickerSquare(),
          PageImagePickerSquare(),
        ],
      ),
    );
  }

  Widget PageImagePickerSquare() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey[300],
      child: Icon(Icons.add_a_photo, size: 50, color: Colors.grey[700]),
    );
  }
}
