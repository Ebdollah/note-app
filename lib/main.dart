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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myInfo = '';
final myController = TextEditingController();  @override
  Widget build(BuildContext context) {
    // The Container widget is a box model that allows you to create a box with various properties such as color, padding, margin, etc.
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('my app'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: SizedBox(
              height: 600,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/coding.jpg'),
                  const Text(
                    'Enter Your Information',
                    style: TextStyle(
                      fontSize: 25.0,
                      height: 3.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding:const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: myController,
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                      labelText: 'Name',
                    ),
                  )
                  ),
                  Text(
                    myInfo,
                    style:const TextStyle(
                      fontSize: 25.0,
                      height: 3.0,
                      fontWeight: FontWeight.bold,
                    ))

                ],
              ),
            )),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("E"),
              ),
              accountName: Text("ebdollah"),
              accountEmail: Text("ebd@gmail.com")),
          ListTile(
            title: const Text("Home"),
            leading: const Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title:const Text("About"),
            leading:const Icon(Icons.info),
            onTap: () {},
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          setState(() {
            myInfo = myController.text;
          });
          // myInfo = myController.text;
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
// Widget Hierarchy:
// Container is the outermost widget, providing a yellow background.
// Center is a child of the Container, ensuring that its child (Text) is centered within the container.
// Text is the innermost widget, displaying the "Hello World" text.
