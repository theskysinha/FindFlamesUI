import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SearchBar() {
  //returns a floating search bar with round corners
  return Container(
    height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}