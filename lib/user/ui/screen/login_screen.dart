import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/main_screen.dart';
import 'package:kramo/user/bloc/user_bloc.dart';

class LoginScreen extends StatefulWidget {
  	LoginScreen({Key key}) : super(key: key);

  	_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

	UserBloc userBloc;

  	@override
  	Widget build(BuildContext context) {
		userBloc = BlocProvider.of(context);
    	return _handleCurrentSession();
  	}

	Widget _handleCurrentSession(){
		return StreamBuilder(
			stream: userBloc.authStatus,
			builder: (BuildContext context, AsyncSnapshot snapshot){
				if (!snapshot.hasData || snapshot.hasError){
					return _loginGoogleUI();
				} else {
					return MainScreen();
				}
			},

		);
	}


	Widget _loginGoogleUI(){
		return Scaffold(
			body: Center(
				child: RaisedButton(
					child: Text('Login with Gmail'),
					onPressed: (){
						userBloc.signIn().then(
							(firebase_auth.User user) => print("El usuario es ${user.displayName}"))
						;
					},
				),
			),
		);
	}
}