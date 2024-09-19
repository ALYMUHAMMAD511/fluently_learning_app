import 'package:fluently_learning_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const FluentlyJapaneseApp());
}

class FluentlyJapaneseApp extends StatelessWidget
{
  const FluentlyJapaneseApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
