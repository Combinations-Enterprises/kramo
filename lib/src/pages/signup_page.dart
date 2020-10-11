import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static final String routeName = 'signup_page';

  SignupPage({Key key}) : super(key: key);

  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Crear cuenta'),
        ),
      )
    );
  }
}