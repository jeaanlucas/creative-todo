import 'package:creativetodo/widgets/todo_card_icon.dart';
import 'package:creativetodo/widgets/todo_card_progress.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      elevation: 6.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TodoCardIcon(),
            Spacer(
              flex: 8,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 4.0,
              ),
              child: Text(
                '5 Tasks',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14.0,
                ),
              ),
            ),
            Container(
              child: Text(
                'Fly',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            Spacer(),
            TodoCardProgress(),
          ],
        ),
      ),
    );
  }
}
