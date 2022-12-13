import 'package:flutter/material.dart';

class IconAnimation extends StatefulWidget {
  const IconAnimation({super.key});

  @override
  State<IconAnimation> createState() => _IconAnimationState();
}

class _IconAnimationState extends State<IconAnimation>
    with TickerProviderStateMixin {
  //

  bool isPlay = false;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlay == false) {
              controller.forward();
              isPlay = true;
            } else {
              controller.reverse();
              isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
