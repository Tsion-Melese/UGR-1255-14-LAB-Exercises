import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/todo_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}
