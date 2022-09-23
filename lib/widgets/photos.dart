import 'package:flutter/material.dart';

import '../model/chattile.dart';

class Profilepic extends StatefulWidget {
  Profilepic({required this.data3});
User data3;
  @override
  State<Profilepic> createState() => _ProfilepicState();
}

class _ProfilepicState extends State<Profilepic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child:Image.network(widget.data3.avater.toString()),
            )
          ],
        )
      ],
    );
  }
}