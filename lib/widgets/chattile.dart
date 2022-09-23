import 'package:flutter/material.dart';
import 'package:test/model/chattile.dart';

class ChatTile extends StatefulWidget {
  ChatTile({required this.data1});
User data1;
  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile (
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.data1.avater.toString()
      ),
     

    ),
    title: Text(widget.data1.name.toString()),
    trailing: Text(widget.data1.time.toString()),
    subtitle: Text(widget.data1.notification.toString()),
    );
  }
}