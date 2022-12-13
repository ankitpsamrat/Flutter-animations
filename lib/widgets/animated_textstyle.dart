// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextStyleAnimation extends StatefulWidget {
  const TextStyleAnimation({super.key});

  @override
  State<TextStyleAnimation> createState() => _TextStyleAnimationState();
}

class _TextStyleAnimationState extends State<TextStyleAnimation> {
  //

  bool first = true;
  double fontSize = 60;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Style'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: fontSize,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
                duration: Duration(milliseconds: 300),
                child: Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  fontSize = first ? 80 : 50;
                  color = first ? Colors.blue : Colors.red;
                  first = !first;
                });
              },
              child: Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}
