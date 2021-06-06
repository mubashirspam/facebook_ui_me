import 'package:flutter/material.dart';
import 'package:my/assets.dart';
import 'package:my/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: a2,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "whats on your mind?",
          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
