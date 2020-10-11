import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static final String routeName = 'login_page';

  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Iniciar sesión'),
    );
  }
}