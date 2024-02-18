// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:note_app/drawer.dart';
// import 'package:note_app/name-card.dart';
import 'package:note_app/pages/homepage.dart';

void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: HomePage() // Assuming HomePage is a StatelessWidget
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
