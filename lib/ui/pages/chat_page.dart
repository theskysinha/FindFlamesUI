import 'package:findflames/ui/widgets/chats_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../widgets/profiles_widgets.dart';
import '../widgets/searchbar_widget.dart';


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
        title: Padding(padding: const EdgeInsets.only(top: 25),
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
          SizedBox(
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProfilesWidget("assets/images/ali.jpg",100,"Ali"),
                  ProfilesWidget("assets/images/tony.jpg",100, "Tony"),
                  ProfilesWidget("assets/images/james.jpg",100, "James"),
                  ProfilesWidget("assets/images/Jordan.jpg",100, "Jordan"),
                ]
              ),
            ),
          ),
    const SizedBox(height:20),
    Stack(
  children: <Widget>[
    Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 70,
        child: SearchBar(),
      ),
    ),
    Container(
      margin: const EdgeInsets.only(top: 70), // add top margin to ChatMessages container
      height: 379.2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ChatMessages(),
    ),],
    )
  ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        fixedColor: fontColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/home.svg"),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/community.svg"),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/calendar.svg"),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/chats.svg"),
          label: 'Chat',
        ),
      ],),
    );
  }
}