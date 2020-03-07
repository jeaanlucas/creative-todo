import 'package:flutter/material.dart';

class EmptyTodoCard extends StatelessWidget {
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
      child: Material(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.white,
        child: InkWell(
          onTap: () => {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 55.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Add Item',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
