import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my/widgets/avatar.dart';
import 'package:my/widgets/circularBarButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;
  StoryCard(
      {
      @required this.labelText,
      @required this.story,
      @required this.avatar,
      this.displayBorder = false,
      this.createStoryStatus = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonAction: () {
                      print("Add stry clicked");
                    },
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    width: 35,
                    hight: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "n/a",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
