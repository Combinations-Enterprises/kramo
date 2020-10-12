import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  	LoginScreen({Key key}) : super(key: key);

  	_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  	@override
  	Widget build(BuildContext context) {
    	return _loginGoogleUI();
  	}


	Widget _loginGoogleUI(){
		return Scaffold(
			body: Center(
				child: RaisedButton(
					child: Text('Login with Gmail'),
					onPressed: (){
						
					},
				),
			),
		);
	}
}