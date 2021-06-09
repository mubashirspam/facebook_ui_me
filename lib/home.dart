import 'package:flutter/material.dart';
import 'package:my/assets.dart';
import 'package:my/sections/headerButtonSection.dart';
import 'package:my/sections/roomSection.dart';
import 'package:my/sections/statusSection.dart';
import 'package:my/sections/storySection.dart';
import 'package:my/sections/suggestionSection.dart';
import 'package:my/widgets/circularBarButton.dart';
import 'package:my/widgets/headerButton.dart';
import 'package:my/widgets/postCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[350],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xff111111),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonAction: () {
                  print("search button pressed");
                },
                buttonIcon: Icons.chat),
            CircularButton(
                buttonAction: () {
                  print("chat button pressed");
                },
                buttonIcon: Icons.search)
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
                buttonOne: headerButton(
                    buttonText: "Live",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {
                      print("Live Clicked");
                    },
                    buttonColor: Colors.red),
                buttonTwo: headerButton(
                    buttonText: "Photos",
                    buttonIcon: Icons.photo_library,
                    buttonAction: () {
                      print("photo Clicked");
                    },
                    buttonColor: Colors.green),
                buttonThree: headerButton(
                    buttonText: "Room",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {
                      print("Room Clicked");
                    },
                    buttonColor: Colors.purple)),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: a1,
              name: "Muabshir",
              publishat: '5h',
              postImage: b1,
              postTitle: 'Happy divali',
              showBlueTick: true,
              commentCount: '5k',
              likeCount: '10k',
              shareCount: '2k',
            ),
            thickDivider,
            PostCard(
              avatar: a2,
              name: "Muabshir",
              publishat: '5h',
              postImage: b7,
              showBlueTick: true,
              commentCount: '5k',
              likeCount: '10k',
              shareCount: '2k',
              postTitle: '',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: a2,
              name: "Muabshir",
              publishat: '5h',
              postImage: b3,
              showBlueTick: true,
              commentCount: '5k',
              likeCount: '10k',
              shareCount: '2k',
              postTitle: '',
            ),
          ],
        ),
      ),
    );
  }
}
