import 'package:flutter/material.dart';
import 'package:one/lab/Screentwo.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenTwo()),
          );
        },
        child: Text('Next'),
      ),
    ));
  }
}
