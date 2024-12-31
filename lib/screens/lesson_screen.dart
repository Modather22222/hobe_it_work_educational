import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final String lessonTitle;
  final String description;
  final String videoUrl;

  const LessonScreen({
    super.key,
    required this.lessonTitle,
    required this.description,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lessonTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lessonTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Video Player Placeholder\n($videoUrl)',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
