import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  //

  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 2),
              child: FlutterLogo(size: 50),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
              },
              child: Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
