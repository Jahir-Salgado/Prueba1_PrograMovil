import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
const ColorChangeWidget({super.key});
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  
  Color _currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        setState(() {
          _currentColor = _currentColor == Colors.blue? Colors.red : Colors.blue;
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