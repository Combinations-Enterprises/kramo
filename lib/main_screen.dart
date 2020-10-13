import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/user/bloc/user_bloc.dart';

class MainScreen extends StatefulWidget {
    MainScreen({Key key}) : super(key: key);

  	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
	UserBloc userBloc;
  	@override
  	Widget build(BuildContext context) {
		userBloc = BlocProvider.of<UserBloc>(context);
		return Scaffold(
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				mainAxisAlignment: MainAxisAlignment.center,
			  	children: [
			    	StreamBuilder(
						stream: userBloc.streamFirebase,
						builder: (BuildContext context, AsyncSnapshot snapshot){
							if(!snapshot.hasData || snapshot.hasError){ 
								return CircularProgressIndicator();
							} else {
								return _showProfileData(snapshot);
							}
						},
					),
					SizedBox(height: 50,),
					Center(
						child: Container(
							padding: EdgeInsets.all(50),
							child: Center(
								child: FlatButton(
									shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
									color: Colors.redAccent,
									child: Padding(
										padding: EdgeInsets.all(10),
										child: Row(
											mainAxisAlignment: MainAxisAlignment.center,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: <Widget>[
												Icon(Icons.exit_to_app, color: Colors.white),
												SizedBox(width: 10),
												Text('Logout', style: TextStyle(color: Colors.white))
											],
										)
									),
									onPressed: () {
										userBloc.signut();
									},	  
								),
							)
						)
					)
			  ],
			),
		);
  	}

	Widget _showProfileData( AsyncSnapshot snapshot){
		return Column(
			crossAxisAlignment: CrossAxisAlignment.center,
			children: [
				Container(
					height: 90.0,
					width: 90.0,
					decoration: BoxDecoration(
						border: Border.all(
							color: Colors.white,
							width: 2,
							style: BorderStyle.solid
						),
						shape: BoxShape.circle,
						image: DecorationImage(
							fit: BoxFit.cover,
							image: NetworkImage(snapshot.data.photoUrl)
						)
					)
				),
				Text(snapshot.data.displayName, style: TextStyle(color: Colors.black),),
				Text(snapshot.data.email, style: TextStyle(color: Colors.black),)

			],
		);

	}
}


