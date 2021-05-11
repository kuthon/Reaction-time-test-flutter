import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final List<bool> isPressed;

  ProgressBar({this.isPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ...isPressed.map((value) {
            if (value == true) {
              return Icon(
                CupertinoIcons.checkmark_alt_circle,
                color: Theme.of(context).accentColor,
              );
            } else {
              return Icon(CupertinoIcons.question_circle);
            }
          }).toList(),
        ],
      ),
    );
  }
}
