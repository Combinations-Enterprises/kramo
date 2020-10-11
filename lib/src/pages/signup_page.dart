import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';




class SignupPage extends StatefulWidget {
  static final String routeName = 'signup_page';

  SignupPage({Key key}) : super(key: key);

  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
	
  @override
  Widget build(BuildContext context) {
    	return Scaffold(
      		body: Column(
				children: [
					RaisedButton(
						onPressed: (){
							
							

						},
					)
				],
			)
    );
  }
}