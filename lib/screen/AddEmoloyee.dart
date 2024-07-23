// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:html' as html;

DateTime _selectedDate = DateTime.now();
DateTime _selectedDate2 = DateTime.now();

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee>
    with SingleTickerProviderStateMixin {
  Image? selectedImage, selectedImage2, selectedImage3;
  Future<void> _selectDate(int page) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now(),
    );
    if (page == 1) {
      if (picked != null && picked != _selectedDate) {
        setState(() {
          _selectedDate = picked;
        });
      }
    } else if (page == 2) {
      if (picked != null && picked != _selectedDate2) {
        setState(() {
          _selectedDate2 = picked;
        });
      }
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
                width: 65,
                height: 65,
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
                width: 85,
                height: 65,
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
                width: 135,
                height: 65,
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
                width: 25,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 150,
                height: 100,
                alignment: Alignment.center,
                child: GFButton(
                    onPressed: () {
                      _selectDate(1);
                    },
                    text: "select date",
                    type: GFButtonType.transparent,
                    shape: GFButtonShape.pills),
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
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Position',
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
              labelText: 'Department',
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
              labelText: 'Salary',
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
          Row(
            children: [
              Container(
                width: 65,
                height: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate2.day}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 85,
                height: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate2.month}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 135,
                height: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "${_selectedDate2.year}",
                  style: GoogleFonts.sourceSans3(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 150,
                height: 100,
                alignment: Alignment.center,
                child: GFButton(
                    onPressed: () {
                      _selectDate(2);
                    },
                    text: "select date",
                    type: GFButtonType.transparent,
                    shape: GFButtonShape.pills),
              ),
            ],
          ),
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
          PageImagePickerSquare(1),
          PageImagePickerSquare(2),
          PageImagePickerSquare(3),
        ],
      ),
    );
  }

  // Widget PageImagePickerSquare() {
  //   return Container(
  //     width: 100,
  //     height: 100,
  //     color: Colors.grey[300],
  //     child: InkWell(
  //       onTap: (){

  //       },
  //       child: Icon(Icons.add_a_photo, size: 50, color: Colors.grey[700])),
  //   );
  // }
  Widget PageImagePickerSquare(int pic) {
    void openFileExplorer(int value) {
      html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
      uploadInput.click();
      uploadInput.onChange.listen((event) {
        final files = uploadInput.files;
        if (files!.length == 1) {
          final reader = html.FileReader();
          reader.readAsDataUrl(files[0]);
          reader.onLoadEnd.listen((event) {
            setState(() {
              value == 1
                  ? selectedImage = Image.memory(
                      base64Decode(reader.result.toString().split(",").last))
                  : value == 2
                      ? selectedImage2 = Image.memory(base64Decode(
                          reader.result.toString().split(",").last))
                      : selectedImage3 = Image.memory(base64Decode(
                          reader.result.toString().split(",").last));
            });
          });
        }
      });
    }

    return Container(
      width: 150,
      height: 150,
      color: Colors.grey[300],
      child: InkWell(
          onTap: () {
            openFileExplorer(pic);
          },
          // child: Icon(Icons.add_a_photo, size: 50, color: Colors.grey[700]),
          child: pic == 1
              ? selectedImage != null
                  ? Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: selectedImage!.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  :Column( mainAxisAlignment:MainAxisAlignment.center ,children:const [ Icon(Icons.add_a_photo, size: 50, color: Color.fromARGB(255, 31, 28, 28),),SizedBox(height: 10,),Text("Secondary photo",style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),)])
              : pic == 2
                  ? selectedImage2 != null
                      ? Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: selectedImage2!.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      :Column( mainAxisAlignment:MainAxisAlignment.center ,children:const [ Icon(Icons.add_a_photo, size: 50, color: Color.fromARGB(255, 31, 28, 28),),SizedBox(height: 10,),Text("Primary photo",style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),)])
                  : selectedImage3 != null
                      ? Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: selectedImage3!.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      :Column( mainAxisAlignment:MainAxisAlignment.center ,children:const [ Icon(Icons.add_a_photo, size: 50, color: Color.fromARGB(255, 31, 28, 28),),SizedBox(height: 10,),Text("Secondary photo",style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),)]))
    );
  }
}
