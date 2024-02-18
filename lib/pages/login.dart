import 'package:flutter/material.dart';
import 'package:note_app/pages/homepage.dart';

class login extends StatefulWidget {
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
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage())
                        );
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