import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation>
    with TickerProviderStateMixin {
  //

  // late AnimationController controller;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 5),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Animation'),
      ),
      body: Center(
        child: Lottie.network(
          'https://assets1.lottiefiles.com/packages/lf20_JioBzM286M.json',
          // controller: controller,
          // onLoaded: (composition) {
          //   // controller.forward();
          //   controller.repeat();
          // },
        ),
      ),
    );
  }
}
