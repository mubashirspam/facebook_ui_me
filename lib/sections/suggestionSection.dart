import 'package:flutter/material.dart';
import 'package:my/widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      
      child: Column(
        children: [
          ListTile(
            title: Text("People may you know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
