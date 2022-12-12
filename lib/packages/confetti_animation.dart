import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiAnimation extends StatefulWidget {
  const ConfettiAnimation({super.key});

  @override
  State<ConfettiAnimation> createState() => _ConfettiAnimationState();
}

class _ConfettiAnimationState extends State<ConfettiAnimation> {
  //

  bool isPlaying = false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        isPlaying = controller.state == ConfettiControllerState.playing;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Confetti Animation'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                if (isPlaying) {
                  controller.stop();
                } else {
                  controller.play();
                }
              },
              child: Text(isPlaying ? 'Stop' : 'Celebrate'),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: controller,
          shouldLoop: true,

          //  confetti direction

          // blastDirection: 0, //  for right side
          blastDirectionality: BlastDirectionality.explosive, //  for all side
        ),
      ],
    );
  }
}
