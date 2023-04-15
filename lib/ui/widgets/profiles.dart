import 'package:flutter/material.dart';

Widget ProfilesWidget(String urlImg, double radius) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: AssetImage(urlImg),
            )),
      ),
    ),
  );
}