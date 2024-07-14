import 'package:flutter/material.dart';
import 'package:newsapp_task7/views/home_view.dart';
import 'package:newsapp_task7/views/news_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsView(),
    );
  }
}
