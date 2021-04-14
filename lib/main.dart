// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:phoneBook/widgets/listOfNumbers.dart';
import './widgets/searchBar.dart';
// import 'package:phoneBook/models/phoneNumber.dart';
// import 'package:phoneBook/widgets/listOfNumbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // void _newMobileNumber() {
  //   print("this");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'BalooTammudu2',
        textTheme: TextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_sharp),
            onPressed: null,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () => _newMobileNumber(),
            ),
          ],
          title: Text(
            'PhoneBook',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontFamily: 'Lobster',
            ),
          ),
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 10,
          // shape: ,
        ),
        body: Column(
          children: [
            Container(
              // height: 59,
              width: double.infinity,
              child: SearchBar(),
            ),
            Container(
              height: 500,
              child: ListOfNumbers(),
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: null,
        //   elevation: 50,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
