import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  const AnimatedListView({super.key});

  Widget card(int index) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          'Items $index',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Animated List View'),
      ),
      body: ListWheelScrollView(
        // diameterRatio: 2,
        itemExtent: 250,
        physics: FixedExtentScrollPhysics(),
        children: [
          card(0),
          card(2),
          card(3),
          card(4),
          card(5),
          card(6),
          card(7),
          card(8),
          card(9),
          card(10),
        ],
      ),
    );
  }
}
