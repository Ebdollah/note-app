import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(), // Assuming HomePage is a StatelessWidget
    // theme: ThemeData.raw(
    //   primarySwatch: Colors.red,
    // ),
  ));
}

// The main function is the entry point of the Flutter application. It calls runApp to start the app with a MaterialApp. The MaterialApp is configured with a HomePage widget as its home page.

class HomePage extends StatelessWidget {
  const HomePage({super.key});  
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
// Widget Hierarchy:
// Container is the outermost widget, providing a yellow background.
// Center is a child of the Container, ensuring that its child (Text) is centered within the container.
// Text is the innermost widget, displaying the "Hello World" text.