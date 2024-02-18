import "package:flutter/material.dart";

// ignore: camel_case_types
class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      ));
  }
}