import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final Color color;

  const GradientBackground({
    this.color,
    this.child,
  });

  List<Color> _getColors(Color color) {
    if (color is MaterialColor) {
      return [
        color[200],
        color[500],
        color[600],
        color[900],
      ];
    }

    return List<Color>.filled(
      4,
      color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [
            0.3,
            0.5,
            0.7,
            0.9,
          ],
          colors: _getColors(this.color),
        ),
      ),
      curve: Curves.easeIn,
      duration: Duration(
        microseconds: 500,
      ),
      child: child,
    );
  }
}
