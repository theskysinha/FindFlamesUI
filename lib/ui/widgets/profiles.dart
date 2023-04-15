import 'package:flutter/material.dart';

Widget ProfilesWidget(String urlImg, double radius, String name) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [Container(
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
        Container(
          alignment: Alignment.center,
          child:Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 5, right: 2),
              child: Text(name, style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),),
              ),
            Icon(Icons.verified, color: Colors.blue, size: 15,),
            SizedBox(width: 5,)
          ],),
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          )
          )
        ],)
    ),
  );
}