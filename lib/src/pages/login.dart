
import 'package:apso/src/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in'),
      ),
      body: Column(
          children: <Widget>[
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: passwordController,
            ),
            ElevatedButton(onPressed: () async {
              dynamic result = await _auth.handleSignIn(emailController.text, passwordController.text);

              if(result != null){
                Navigator.pushNamed(context, '/menu');
              }
            }, child: Text('Login')),
          ]
      ),
    );
  }
}
