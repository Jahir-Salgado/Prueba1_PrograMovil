import 'package:flutter/material.dart';
import 'dart:math';

class ColorChangeWidget extends StatefulWidget {
  const ColorChangeWidget({super.key});
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  Color _currentColor = Colors.blue;

  Color _getRandomColor() {
    return Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentColor =
              _currentColor == Colors.blue ? _getRandomColor(): Colors.blue;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        color: _currentColor,
      ),
    );
  }
}
