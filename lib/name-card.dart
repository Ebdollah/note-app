import "package:flutter/material.dart";

// ignore: camel_case_types
class nameCardWid extends StatelessWidget {
  const nameCardWid({
    super.key,
    required this.myController,
    required this.myInfo,
  });

  final TextEditingController myController;
  final String myInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
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
      ));
  }
}