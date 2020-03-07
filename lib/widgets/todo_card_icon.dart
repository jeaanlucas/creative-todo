import 'package:flutter/material.dart';

class TodoCardIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      child: Icon(
        Icons.airplanemode_active,
        color: Colors.purple,
        size: 30.0,
      ),
    );
  }
}
