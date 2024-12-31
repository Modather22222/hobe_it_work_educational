import 'package:flutter/material.dart';
import 'subject_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> subjects = ['Math', 'English', 'Science'];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subjects')),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubjectScreen(subject: subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
