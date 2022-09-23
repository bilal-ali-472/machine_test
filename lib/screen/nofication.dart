import 'package:flutter/material.dart';
import 'package:test/model/nofication.dart';
import 'package:test/widgets/notifictn.dart';

class NotifctnScreen extends StatefulWidget {
  NotifctnScreen({Key? key}) : super(key: key);

  @override
  State<NotifctnScreen> createState() => _NotifctnScreenState();
}

class _NotifctnScreenState extends State<NotifctnScreen> {

  List<USer> Notifctn_list =[
    USer(
avater: 'Assets/Images/DSC_1646.jpg',
name: 'muhammed Bilal',
time: '56 min ago',
// image:
notification: ' hello welcome to the world' 
    ),
     USer(
avater: 'Assets/Images/DSC_1646.jpg',
name: 'muhammed boss',
time: '29 min ago',
// image:
notification: ' hello welcome to the world' 
    ),
     USer(
avater: 'Assets/Images/DSC_1646.jpg',
name: 'muhammed Fris',
time: '15 min ago',
// image:
notification: ' hello welcome to the world' 
    ),
     USer(
avater: 'Assets/Images/DSC_1646.jpg',
name: 'muhammed Shamil',
time: '3 min ago',
// image:
notification: ' hello welcome to the world' 
    ),
     USer(
avater: 'Assets/Images/DSC_1646.jpg',
name: 'muhammed Rafi',
time: '4 min ago',
// image:
notification: ' hello welcome to the world' 
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(alignment: Alignment.center,
        child: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
        ,),
        actions: [
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child: Icon(Icons.horizontal_split,color: Colors.black,),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: Notifctn_list.length,
        itemBuilder: (BuildContext context, int index){
          return NotfctnTile(data2: Notifctn_list[index]);
        }),
    );
  }
}