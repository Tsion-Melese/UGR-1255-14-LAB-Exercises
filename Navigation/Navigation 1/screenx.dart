import 'package:flutter/material.dart';
import 'package:one/lab/screeny.dart';

class ScreenX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen X"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ScreenY(),
                  settings: const RouteSettings(arguments: "Data")));
        },
        child: Text("next"),
      )),
    );
  }
}
