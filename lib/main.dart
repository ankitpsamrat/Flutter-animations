import 'package:animations/widgets/animated_rotation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      // home: HomePage(),
      // home: AnimatedSizedAnimation(),
      // home: ConfettiAnimation(),
      // home: ProgressButton(),
      // home: LottieAnimation(),
      // home: AnimatedBuilderAnimation(),
      // home: AnimatedContainerAnimation(),
      // home: CrossFadeAnimation(),
      // home: TextStyleAnimation(),
      // home: IconAnimation(),
      // home: OpacityAnimation(),
      home: RotationAnimation(),
    );
  }
}
