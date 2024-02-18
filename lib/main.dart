import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
      body: Container(
        color: Colors.yellow,
        width: 300,
        height: 100,
        padding: const EdgeInsets.all(20),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            )
        ),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.redAccent,
        // shadowColor: Colors.redAccent,
        // surfaceTintColor: Colors.redAccent,
        child: ListView(
        padding: EdgeInsets.zero,
          children:<Widget> [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("E"),
              ),
              accountName: Text("ebdollah"), 
              accountEmail: Text("ebd@gmail.com")),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){},
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              onTap: (){},
            ),
          ],
          
        )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      
  );
  }
  // In Flutter, Scaffold is a basic material design visual structure. It's a container that holds the visual elements of a typical material design app, including the app bar, body of the app, bottom navigation bar, and floating action button. 
}
// Widget Hierarchy:
// Container is the outermost widget, providing a yellow background.
// Center is a child of the Container, ensuring that its child (Text) is centered within the container.
// Text is the innermost widget, displaying the "Hello World" text.