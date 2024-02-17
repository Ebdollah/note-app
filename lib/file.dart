import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    // The Container widget is a box model that allows you to create a box with various properties such as color, padding, margin, etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text('my app'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          // color: Colors.yellow,
          padding: const EdgeInsets.all(16.0),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration:const BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 227, 217, 143),
                Color.fromARGB(255, 93, 85, 13)],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 40,
                spreadRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            ),
          child: const Text('Hello World',
          // textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    )
  );
  }
  // In Flutter, Scaffold is a basic material design visual structure. It's a container that holds the visual elements of a typical material design app, including the app bar, body of the app, bottom navigation bar, and floating action button. 
}
    

