import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),   // HomePage is a StatelessWidget
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text('Hello World', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}