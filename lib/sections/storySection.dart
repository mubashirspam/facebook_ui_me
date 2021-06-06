import 'package:flutter/material.dart';
import 'package:my/assets.dart';
import 'package:my/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 180,
      
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            StoryCard(
              labelText: "Add To Story",
              avatar: a1,
              story: b1,
              
              createStoryStatus: true,
            ),
            StoryCard(
              labelText: "Koooi",
              avatar: a1,
              story: a1,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Mumammil",
              avatar: a2,
              story: b2,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a3,
              story: b3,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a4,
              story: b4,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a5,
              story: b5,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a6,
              story: b6,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a7,
              story: b7,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a1,
              story: b8,
              displayBorder: true,
              
            ),
            StoryCard(
              labelText: "Add To Story",
              avatar: a2,
              story: b9,
              displayBorder: true,
              
            ),
          ],
        ),
      ),
    );
  }
}
