// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:note_app/drawer.dart';
// import 'package:note_app/name-card.dart';
// ignore: unused_import
import 'package:note_app/pages/homepage.dart';
import 'package:note_app/pages/login.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(myApp());
}
// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomePage() // Assuming HomePage is a StatelessWidget
    home: login(),
    routes: {
      '/login': (context) => login(),
      // login.routeName: (context) => login(),
      '/home': (context) => HomePage(),
      // HomePage.routeName: (context) => HomePage(),
    },
    // theme: ThemeData.raw(
    //   primarySwatch: Colors.red,
    // ),
  );
    //  HomePage();
  }
}

// The main function is the entry point of the Flutter application. It calls runApp to start the app with a MaterialApp. The MaterialApp is configured with a HomePage widget as its home page.



// Widget Hierarchy:
// Container is the outermost widget, providing a yellow background.
// Center is a child of the Container, ensuring that its child (Text) is centered within the container.
// Text is the innermost widget, displaying the "Hello World" text.
