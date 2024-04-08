import 'package:flutter/material.dart';
import 'package:one/lab/Screentwo.dart';
import 'package:one/lab/course/courseapp.dart';
import 'package:one/lab/screenone.dart';
import 'package:one/lab/screenx.dart';
import 'package:one/lab/screeny.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenOne(),
        '/second': (context) => ScreenTwo(),
        '/x': (context) => ScreenX(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/y':
            return MaterialPageRoute(builder: (context) => ScreenY());
        }
      },
    );
  }
}
