import 'package:flutter/material.dart';
import 'package:test/model/chattile.dart';
import 'package:test/model/nofication.dart';

class NotfctnTile extends StatefulWidget {
  NotfctnTile({required this.data2});
USer data2;
  @override
  State<NotfctnTile> createState() => _NotfctnTileState();
}

class _NotfctnTileState extends State<NotfctnTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage:AssetImage(widget.data2.avater.toString()) ,
      ),

      trailing: Text(widget.data2.time.toString()),
      title: Text(widget.data2.name.toString()),
      subtitle: Row(
        children: [
          Text(widget.data2.notification.toString()),
        ],
      ),
    );
  }
}