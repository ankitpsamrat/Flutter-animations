import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> {
  //

  double turn = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Rotation'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turn,
              duration: Duration(seconds: 1),
              child: FlutterLogo(size: 100),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                turn = turn + 1 / 4;
              });
            },
            child: Text('Rotate'),
          ),
        ],
      ),),
    );
  }
}
