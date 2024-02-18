import 'package:flutter/material.dart';
import 'package:note_app/drawer.dart';
// ignore: unused_import
import 'package:note_app/name-card.dart';
// ignore: unused_import
import 'package:note_app/pages/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myInfo = '';
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;
  final myController = TextEditingController(); 


@override
 void initState(){
  super.initState();
  fetchData();

  
 }
  fetchData() async {
    var response = await http.get(Uri.parse(url));
    data = json.decode(response.body);
    setState(() {
      
    });
    // print(response.body);
  }

 @override
  Widget build(BuildContext context) {
    // The Container widget is a box model that allows you to create a box with various properties such as color, padding, margin, etc.
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('my app'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Navigator.of(context).pop(
              //           MaterialPageRoute(builder: (context) => login())
              //           );
              Navigator.pop(context);
            },
          ),
        ]
      ),
      // ignore: prefer_const_constructors
        
        body: data != null ? 
        ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]['title']),
            subtitle: Text('ID: ${data[index]['id']}'),
            leading: Image.network(data[index]['url']),
          );
        },  
        itemCount: data.length,
      ) : 
        const Center(
          child: CircularProgressIndicator(),
        ),
        // Padding(
        // padding: const EdgeInsets.all(8.0),
        
        // child: SingleChildScrollView(
        //   child: nameCardWid(myController: myController, myInfo: myInfo),
        // ),
      // ),
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
