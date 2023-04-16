import 'package:flutter/material.dart';

import '../../constants.dart';

Widget ChatMessages(){
  return Padding(
        padding: const EdgeInsets.only(top: 10),
      child:
      Container(
            height: 458,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child:
                ListView(
                shrinkWrap: true,
                children: [ 
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/tony.jpg'),
                    ),
                    title: const Text(
                      'Tony',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: const Text(
                      'Hey, how are you?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        const Text(
                          '12:00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            Icon(
                              Icons.circle,
                              color: fontColor,
                              size: 25,
                            ),
                            Text("1", style: TextStyle(color: Colors.white, fontSize: 10),),
                          ],
                        ),
                      ])
                    ),
                    const SizedBox(height: 1),
                    const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color.fromARGB(255, 213, 212, 212),
                      indent: 40,
                      endIndent: 40,
            ),
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/james.jpg'),
                    ),
                    title: Text(
                      'James',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      'Hi!!?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Text(
                      '12:00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                    const Divider(
                      thickness: 1,
                      height: 5,
                      color: Color.fromARGB(255, 213, 212, 212),
                      indent: 40,
                      endIndent: 40,
            ),
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/Jordan.jpg'),
                    ),
                    title: Text(
                      'Jordan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      'Typing...',
                      style: TextStyle(
                        color: fontColor,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    trailing: Text(
                      '12:00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
          ),
          const SizedBox(height: 1),
                    const Divider(
                      thickness: 1,
                      height: 1,
                      color: Color.fromARGB(255, 213, 212, 212),
                      indent: 40,
                      endIndent: 40,
            )
        ]
      ),
    )
  );
}