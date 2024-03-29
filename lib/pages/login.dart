import 'package:flutter/material.dart';
import 'package:note_app/pages/homepage.dart';
import 'package:note_app/main.dart';
import "package:shared_preferences/shared_preferences.dart";
import 'package:note_app/utils/constants.dart';


class login extends StatefulWidget {
  static const String routeName = '/login';
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  // var login({super.key});
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/coding.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Card(
            margin:const EdgeInsets.only(top: 100.0),
             color: Colors.white.withOpacity(0.7),
            // colorBlendMode: BlendMode.darken,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                const SizedBox(
                    height: 40.0,
                  ),
                  
                  TextFormField(
                    controller: _usernameController,
                    validator: (s){},
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter your email',
                      labelText: 'Email'
                    ),
                  ),
                const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    validator: (s){},
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter your password',
                      labelText: 'Password'
                    ),
                  ),
                const SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    child: Text('Sign in'),
                     style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        padding:const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0)
                        
                   ),
                    onPressed: ()async{
                      formKey.currentState!.validate();
                      // Constants.setBool('loggedIn', true);
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('loggedIn', true);
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(builder: (context) => HomePage())
                      //   );
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context) => HomePage()
                      // ));
                      // Navigator.pushNamed(context, '/home');
                      // Navigator.pushNamed(context, HomePage.routeName);
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
                    }, 
                    
                  )
                ],
              ),
            ),
          ),
        )
      )

        ],
      )
      
    );
  }
}