import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my/assets.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionsDetails(),
        ],
      ),
    );
  }
}

Widget iconButton({
  @required void Function() buttonAction,
   IconData buttonIcon,
  @required Color buttonColor,
  @required Color buttonTextColor,
   Color buttonIconColor,
  @required String buttonText,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(15),
      backgroundColor: buttonColor,
      
    ),
    icon: Icon(
      buttonIcon,
      color: buttonIconColor,
      size: 15,
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
  );
}

Widget suggestionsDetails() {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      height: 140,
      color: Colors.grey[200],
      child: Column(
        children: [
          ListTile(
            title: Text("Mubashir Ahammed"),
            subtitle: Text("8 mutual Friends"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconButton(
                  buttonAction: () {},
                  buttonIcon: Icons.add_moderator,
                  buttonColor: Colors.blue,
                  buttonTextColor: Colors.white,
                  buttonText: "Add friend",
                  buttonIconColor: Colors.white,
                ),
                iconButton(
                  buttonAction: () {},
                  
                  buttonColor: Colors.grey[300],
                  buttonTextColor: Colors.black,
                  buttonText: "Remove",
                
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget suggestionImage() {
  return Positioned(
    top: 0,
    right: 0,
    left: 0,
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
      child: Image.asset(
        a1,
        height: 250,
        fit: BoxFit.cover,
      ),
    ),
  );
}
