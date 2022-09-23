import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/model/chattile.dart';
import 'package:test/widgets/chattile.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
with SingleTickerProviderStateMixin{
  late TabController _tb;

List<User> ChatList =[
  
User(
  avater: 'Assets/Images/Dsc_1646.jpg',
  name: 'Muhammed Bilal',
  time: '12 mmin ago',
  notification: 'Are you angry with something'
),
User(
  avater: 'Assets/Images/Dsc_1646.jpg',
  name: 'Muhammed ',
  time: '15 mmin ago',
  notification: 'Are you free'
),
User(
  avater: 'Assets/Images/Dsc_1646.jpg',
  name: 'Bilal',
  time: '17 mmin ago',
  notification: 'Are you angry with something'
),
User(
  avater: 'Assets/Images/Dsc_1646.jpg',
  name: 'Hafis',
  time: '17 mmin ago',
  notification: 'hlo guys'
),
User(
  avater: 'Assets/Images/Dsc_1646.jpg',
  name: 'Hisham ',
  time: '27 mmin ago',
  notification: 'hlo guys'
),
];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tb = TabController(length: 2, vsync: this, initialIndex: 0);
  }
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Search',
      style: TextStyle(color: Colors.grey.withOpacity(0.75)),),
      leading: Icon(Icons.arrow_back,
      color: Colors.black,),
      actions: [
        Padding(padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.horizontal_split_outlined,
        color: Colors.black,),
        )
      ],
bottom: TabBar(tabs: [ 
  Tab(text: 'Messages',),
  Tab(text: 'Groups',)
  
  ],
  controller: _tb,
  ),

    ),

    floatingActionButton: FloatingActionButton(onPressed: () {},
    backgroundColor: Colors.blue,child: Icon(Icons.add),
    ),

    body: ListView.builder(itemCount: ChatList.length, 
    itemBuilder: (BuildContext context, int index){
      return ChatTile(data1: ChatList[index]);
    },
    ),
   ) ;
  }
}