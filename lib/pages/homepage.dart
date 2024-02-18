import 'package:flutter/material.dart';
import 'package:note_app/drawer.dart';
import 'package:note_app/name-card.dart';

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
          child: nameCardWid(myController: myController, myInfo: myInfo),
        ),
      ),
      drawer:const myDrawer(),
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
