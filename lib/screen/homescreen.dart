import 'package:flutter/material.dart';
import 'package:test/screen/chatScreen.dart';
import 'package:test/screen/feedpage.dart';
import 'package:test/screen/nofication.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current_index =0;
  final tabs = [
    ChatScreen(),
 Text('haaaaaa'),
fedpage(),
NotifctnScreen(),
Center( child:  Text('Profile'),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _current_index,
      type:  BottomNavigationBarType.fixed,
      items: [
 BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.people),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "15"),
  BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: ""),
      ],
      
      onTap: (index){setState(() {
        _current_index = index;
      });},),
      body: tabs[_current_index],
    );
  }
}