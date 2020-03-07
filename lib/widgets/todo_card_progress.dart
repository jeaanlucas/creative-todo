import 'package:flutter/material.dart';

class TodoCardProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LayoutBuilder(
            builder: (BuildContext _, BoxConstraints bc) => Stack(
              children: [
                Container(
                  height: 4.0,
                  color: Colors.grey.withOpacity(0.1),
                ),
                AnimatedContainer(
                  height: 4.0,
                  width: .50 * bc.maxWidth,
                  color: Colors.purple,
                  duration: Duration(
                    microseconds: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(
            '50%',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
