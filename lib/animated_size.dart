import 'package:flutter/material.dart';

class AnimatedSizedAnimation extends StatefulWidget {
  const AnimatedSizedAnimation({super.key});

  @override
  State<AnimatedSizedAnimation> createState() => _AnimatedSizedAnimationState();
}

class _AnimatedSizedAnimationState extends State<AnimatedSizedAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSize(
          duration: Duration(seconds: 5),
          child: SizedBox(
            height: double.infinity,
            child: Image.network(
              'https://static.scientificamerican.com/sciam/cache/file/7A715AD8-449D-4B5A-ABA2C5D92D9B5A21_source.png?w=590&h=800&756A88D1-C0EA-4C21-92BE0BB43C14B265',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
