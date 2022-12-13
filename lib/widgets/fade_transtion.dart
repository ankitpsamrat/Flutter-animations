import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //

  late Animation<double> fadeAnimation;
  late AnimationController fadeAnimationController;

  @override
  void initState() {
    super.initState();

    fadeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    fadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(fadeAnimationController.view);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //  type 1

            // FadeTransition(
            //   opacity: fadeAnimation,
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     color: Colors.redAccent,
            //   ),
            // ),

            //  type 2

            ScaleTransition(
              scale: fadeAnimation,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.redAccent,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fadeAnimationController.forward();
              },
              child: Text('Show'),
            ),
            ElevatedButton(
              onPressed: () {
                fadeAnimationController.reverse();
              },
              child: Text('Hide'),
            ),
          ],
        ),
      ),
    );
  }
}
