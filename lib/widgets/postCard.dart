import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my/sections/headerButtonSection.dart';

import 'package:my/widgets/avatar.dart';
import 'package:my/widgets/blueTick.dart';
import 'package:my/widgets/headerButton.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishat;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    @required this.avatar,
    @required this.name,
    @required this.publishat,
    @required this.postTitle,
    @required this.postImage,
    this.showBlueTick = false,
    @required this.likeCount,
    @required this.shareCount,
    @required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[350],
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_outlined,
                buttonAction: () {
                  print("Like clicked");
                },
                buttonColor: Colors.grey[700]),
            buttonTwo: headerButton(
                buttonText: "Cmments",
                buttonIcon: Icons.message_outlined,
                buttonAction: () {
                  print("Commrnt clicked");
                },
                buttonColor: Colors.grey[700]),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  print("Share clicked");
                },
                buttonColor: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget displayText({@required String label}) {
    return Text(
      label == null ? "no" : label,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 13,
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 10,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            displayText(
              label: likeCount,
            ),
          ],
        ),
        Container(
          child: Row(children: [
            displayText(
              label: commentCount,
            ),
            SizedBox(
              width: 5,
            ),
            displayText(label: "Comment"),
            SizedBox(
              width: 10,
            ),
            displayText(
              label: shareCount,
            ),
            SizedBox(
              width: 5,
            ),
            displayText(label: "Shares"),
            SizedBox(
              width: 5,
            ),
            Avatar(
              displayImage: avatar,
              displayStatus: false,
              hight: 25,
              width: 25,
            ),
            IconButton(
              onPressed: () {
                print("dropdown");
              },
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.grey[700],
              ),
            ),
          ]),
        )
      ]),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            child: Text(
              postTitle == null ? "Title Here" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishat == null ? "" : publishat,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 13,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("More clicked");
          },
          icon: Icon(
            Icons.more_vert,
            color: Colors.grey[700],
          )),
    );
  }
}
