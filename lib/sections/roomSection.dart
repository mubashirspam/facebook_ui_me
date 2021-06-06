import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my/widgets/avatar.dart';

import '../assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 70,

      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: a1,
            displayStatus: true,
            
          ),
          Avatar(
            displayImage: a2,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a4,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a5,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a6,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a7,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a1,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a3,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a4,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a5,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a6,
            displayStatus: true,
          ),
          Avatar(
            displayImage: a7,
            displayStatus: true,
          ),
        ],
      ),
    );
  }
}

Widget createRoomButton() {
  return OutlinedButton.icon(
    style: OutlinedButton.styleFrom(
      side: BorderSide(
        width: 1,
        color: Colors.blue[200],
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
    ),
    onPressed: () {
      print("Create Room clicked");
    },
    icon: Icon(
      Icons.video_call,
      color: Colors.purple,
    ),
    label: Text(
      "Create \nRoom",
      style: TextStyle(fontSize: 12),
    ),
  );
}
