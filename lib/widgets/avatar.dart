import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double hight;
  Avatar({
    @required this.displayImage,
    @required this.displayStatus,
    this.displayBorder = false,
    this.hight = 35,
    this.width = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: displayBorder
            ? Border.all(
                color: Colors.blueAccent,
                width: 3,
              )
            : null,
      ),
      child: Center(
        child: Stack(
          children: [
            ClipRRect(
              child: Image.asset(
                displayImage,
                height: width,
                width: hight,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            //  displayStatus == true ?

            displayStatus == true
                ? Positioned(
                    bottom: 0,
                    right: 1,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
