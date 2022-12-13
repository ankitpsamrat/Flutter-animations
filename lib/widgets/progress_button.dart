import 'package:flutter/material.dart';

class ProgressButton extends StatefulWidget {
  const ProgressButton({super.key});

  @override
  State<ProgressButton> createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton> {
  //

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Progress Button'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 18),
            minimumSize: Size.fromHeight(60),
            shape: StadiumBorder(),
          ),
          onPressed: () async {
            if (isLoading) return;
            setState(() {
              isLoading = true;
            });
            await Future.delayed(Duration(seconds: 2));
            setState(() {
              isLoading = false;
            });
          },
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(color: Colors.white),
                    SizedBox(width: 20),
                    Text('Please wait ...'),
                  ],
                )
              : Text('Login'),
        ),
      ),
    );
  }
}
