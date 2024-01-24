import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade In Image Widget'),
        elevation: 0,
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder:
              'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_640.jpg',
          image:
              'https://cdn.pixabay.com/photo/2016/03/08/20/03/flag-1244649_960_720.jpg',
        ),
      ),
    );
  }
}
