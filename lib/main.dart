import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';
import 'package:dio/dio.dart';

void main() {
  //NewsService(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
