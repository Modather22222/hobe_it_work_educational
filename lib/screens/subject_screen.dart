import 'package:flutter/material.dart';
import 'lesson_screen.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;
  final List<String> lessons = [
    'Lesson 1',
    'Lesson 2',
    'Lesson 3',
    'Lesson 4',
    'Lesson 5',
  ];

  SubjectScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lessons[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LessonScreen(
                    lessonTitle: lessons[index],
                    description:
                        '$subject - ${lessons[index]} description goes here.',
                    videoUrl:
                        'https://example.com/video${index + 1}', // Replace with real URLs
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
