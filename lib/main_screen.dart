import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:kramo/user/bloc/user_bloc.dart';

class MainScreen extends StatefulWidget {
    MainScreen({Key key}) : super(key: key);

  	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
	UserBloc userBloc = UserBloc();
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				mainAxisAlignment: MainAxisAlignment.center,
			  	children: [
			    	Center(child: Text('Main screen'),),
					SizedBox(height: 50,),
					Center(
						child: RaisedButton(
							child: Text('Close session'),
							onPressed: (){
								userBloc.signut();
							},
						),
					)
			  ],
			),
		);
  	}
}