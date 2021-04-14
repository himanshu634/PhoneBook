import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: TextField(
        autofocus: false,
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        textAlignVertical: TextAlignVertical.center,
        
        decoration: InputDecoration(
          
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: EdgeInsets.only(bottom: 10),
          labelText: 'Search',
          labelStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          hintStyle: TextStyle(
            fontSize: 20,
            // fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 3,
            ),
          ),
          // isDense: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 35,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 3,
            ),
          ),
        ),
      ),
      // margin: EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}
