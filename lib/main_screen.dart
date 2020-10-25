import 'package:flutter/material.dart';
import 'package:kramo/match/bloc/match_bloc.dart';
import 'package:kramo/match/model/match_model.dart';
import 'package:kramo/match/ui/screens/new_match_screen.dart';
import 'package:kramo/user/bloc/user_bloc.dart';
import 'package:kramo/user/ui/widgets/button_firebase_signout_widget.dart';
import 'package:kramo/user/ui/widgets/user_profile_widget.dart';

class MainScreen extends StatefulWidget {
    MainScreen({Key key}) : super(key: key);

  	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
	UserBloc userBloc;
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				mainAxisAlignment: MainAxisAlignment.center,
			  	children: [
					RaisedButton(
						child: Text("New match"),
						onPressed: () {
							//Navigator.pushNamed(context, NewMatchScreen.screenName);

							MatchBloc matchBloc = MatchBloc();
							MatchModel match = MatchModel();
							matchBloc.createMatch(match);
						},
					),


					Text('You are logged in', style: TextStyle(fontSize: 20.0)),
					SizedBox(height: 20.0,),
					UserProfileWidget(),
					SizedBox(height: 50,),
					ButtonFirebaseSignOutWidget()
			  	],
			),
		);
  	}	
}
