import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderAnimation extends StatefulWidget {
  const AnimatedBuilderAnimation({super.key});

  @override
  State<AnimatedBuilderAnimation> createState() =>
      _AnimatedBuilderAnimationState();
}

class _AnimatedBuilderAnimationState extends State<AnimatedBuilderAnimation>
    with TickerProviderStateMixin {
  //

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
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
        title: Text('Animated Builder'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: FlutterLogo(size: 100),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: controller.value * 2 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
