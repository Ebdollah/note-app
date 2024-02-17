import 'package:flutter/material.dart';

class rc extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<rc> {
  @override
  Widget build(BuildContext context) {
    // The Container widget is a box model that allows you to create a box with various properties such as color, padding, margin, etc.
   return Scaffold(
  appBar: AppBar(
    title: const Text('my app'),
  ),
  body: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
        ],
      ),
      // Add more Rows or other widgets as needed
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: const Text('Hello World'),
          ),
        ],
      ),
      // Add more Columns or other widgets as needed
    ],
  ),
);

  
  }
  // In Flutter, Scaffold is a basic material design visual structure. It's a container that holds the visual elements of a typical material design app, including the app bar, body of the app, bottom navigation bar, and floating action button. 
}
    

