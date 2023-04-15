import 'package:findflames/ui/widgets/profiles.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        toolbarHeight: 85.0, 
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Padding(padding: EdgeInsets.only(top: 25),
        child:
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                ),
              SizedBox(width: 70),
                Text(
                  'Find Flames',
                  style: TextStyle(
                    color: fontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                 ),
                ),
              SizedBox(width: 70),
              Icon(
                Icons.settings_outlined,
                color: fontColor,
                size: 30,
              ),
            ],
          ),
        )
        )
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProfilesWidget("assets/images/ali.jpg", 100, "Ali"),
                  ProfilesWidget("assets/images/tony.jpg", 100, "Tony"),
                  ProfilesWidget("assets/images/james.jpg", 100, "James"),
                  ProfilesWidget("assets/images/Jordan.jpg", 100, "Jordan"),
                ]
              ),
            ),
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        fixedColor: fontColor,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],)
    );
  }
}