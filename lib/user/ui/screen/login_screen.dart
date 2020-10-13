import 'package:flutter/material.dart';
import 'package:kramo/user/ui/widgets/button_firebase_signin_widget.dart';

class LoginScreen extends StatefulWidget {
  	LoginScreen({Key key}) : super(key: key);

  	_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,	
				children: [
					Text('You are logged out', style: TextStyle(fontSize: 20.0),),
					SizedBox(height: 20.0,),
					ButtonFirebaseSignInWidget()
				],
			)
		);
  	}
}