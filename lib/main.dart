import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.purple, primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WordPair Generator',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple[900],
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
