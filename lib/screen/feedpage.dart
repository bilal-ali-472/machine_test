import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/model/fed.dart';
import 'package:test/widgets/profiledetailsa.dart';

class fedpage extends StatefulWidget {
  fedpage({Key? key}) : super(key: key);

  @override
  State<fedpage> createState() => _fedpageState();
}

class _fedpageState extends State<fedpage> {
   
  //  int _current_index = 0;

//   List<Profile>frnt = [
// Profile(
//   avater: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
//   name: "Bilal",
//   time: "44 min ago",
//   image: "Assets/Images/download.jpg"


// )

  // ];
  List<Profile> profile_list=[
    Profile(
      avater: 'assets/images/boy.jpg',
      name: 'Muhammed bilal',
      image: 'assets/images/boy.jpg',
      time: '44 min ago'
    ),
    Profile(
      avater: 'assets/images/boy.jpg',
      name: 'shamna rahim',
      image: 'assets/images/boy.jpg',
      time: '36 min ago'
    ),
     Profile(
      avater: 'assets/images/boy.jpg',
      name: 'Hafis muhammed ',
      image: ' assets/images/boy.jpg',
      time: '59 min ago'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(alignment: Alignment.center,
        child: Text("Feed",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),),
        actions: [
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:Icon(Icons.horizontal_split,color: Colors.black,) ,
          ),
          
        ],


        
      ),
//       bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
//   BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
//   BottomNavigationBarItem(icon: Icon(Icons.people),label: ""),
//   BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
//   BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ""),
//   BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "")
// ],
// onTap: (index){
//   setState(() {
//   _current_index  = index;
//   body: var tabs;
//    tabs[_current_index];
//   });
// },
// ),


    floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: SizedBox(
            height: 180,
            child: Icon(
              Icons.add,
            )),
      ),
      body:
      
      
       ListView.builder(
        itemCount: profile_list.length,
        itemBuilder: (BuildContext context, int index) {
          return ProfileScreen(data1: profile_list[index]);
        },
      ),
      
    );
    
  }
}
