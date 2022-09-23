import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/model/fed.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({required this.data1});
  Profile data1;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                //color: Colors.yellow,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage:
                         ExactAssetImage('assets/images/boy.jpg'),
                         
                        ),
                        Text(
                          widget.data1.name.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Text(widget.data1.time.toString()),
                        )
                      ],
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          Row(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.red,
                          child: Image(image: AssetImage(widget.data1.image.toString())),
                        )
                      ],
                    )
        ],
      ),
    );
  }
}
