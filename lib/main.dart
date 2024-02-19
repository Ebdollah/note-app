import 'package:flutter/material.dart';
// import 'package:note_app/name-card.dart';
// ignore: unused_import
import 'package:note_app/pages/homepage.dart';
import 'package:note_app/pages/login.dart';
import "package:shared_preferences/shared_preferences.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('loggedIn') ?? false; // Check for existing login

  runApp(myApp(isLoggedIn: isLoggedIn));
}

class myApp extends StatelessWidget {
  final bool isLoggedIn;

  const myApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? HomePage() : login(),
      routes: {
        '/login': (context) => login(),
        // login.routeName: (context) => login(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
// The main function is the entry point of the Flutter application. It calls runApp to start the app with a MaterialApp. The MaterialApp is configured with a HomePage widget as its home page.



// Widget Hierarchy:
// Container is the outermost widget, providing a yellow background.
// Center is a child of the Container, ensuring that its child (Text) is centered within the container.
// Text is the innermost widget, displaying the "Hello World" text.
