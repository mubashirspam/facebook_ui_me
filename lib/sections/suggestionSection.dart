import 'dart:html';

import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.blue,
      child: Column(
        children: [
          ListTile(
            title: Text("People may you know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,color: Colors.grey[700],
              ),
            ),
          ),
          Container(child: Row(
            
            children: [],),)
        ],
      ),
    );
  }
}
