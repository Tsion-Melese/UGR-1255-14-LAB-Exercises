import 'package:flutter/material.dart';
import 'package:one/lab/course/model.dart';

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({required this.courses, required this.onTapped});
  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}
