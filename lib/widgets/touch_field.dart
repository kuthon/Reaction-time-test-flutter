import 'package:flutter/material.dart';

class TouchField extends StatelessWidget {
  final Function onTapDown;
  final Function onTapUp;
  final Color backGroundButtonColor;

  TouchField({required this.backGroundButtonColor, required this.onTapDown, required this.onTapUp});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (details) => onTapDown(),
      onPointerUp: (details) => onTapUp(),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backGroundButtonColor,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
