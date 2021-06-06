import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  CircularButton({
    @required this.buttonAction,
    @required this.buttonIcon,
    this.iconColor = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: Color(0xffdedddd), shape: BoxShape.circle),
      padding: EdgeInsets.all(2),
      child: Center(
        child: IconButton(
          icon: Icon(buttonIcon),
          onPressed: buttonAction,
          color: iconColor,
          iconSize: 20,
          highlightColor: Colors.blue,
          splashRadius: 25,
        ),
      ),
    );
  }
}
