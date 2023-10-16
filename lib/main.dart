import 'package:flutter/material.dart';
import 'package:testapp/components/gradiant_container.dart';
import 'package:testapp/pages/main_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Flutter App.',
      home: Scaffold(
        body: GradiantContainer(
            gradiantColorOne: Colors.deepPurple,
            gradiantColorTwo: Colors.indigo,
            child: MainApp()),
      ),
    );
  }
}
