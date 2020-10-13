import 'package:flutter/material.dart';
import 'package:kramo/user/bloc/user_bloc.dart';

class ButtonFirebaseSignInWidget extends StatelessWidget {

	final UserBloc userBloc;
    const ButtonFirebaseSignInWidget({Key key, @required this.userBloc}) : super(key: key);

	
  	@override
  	Widget build(BuildContext context) {
    	return Container(
			padding: EdgeInsets.all(50),
			child: Center(
				child: FlatButton(
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
					color: Colors.blueAccent,
					child: Padding(
						padding: EdgeInsets.all(10),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.center,
							crossAxisAlignment: CrossAxisAlignment.center,
							children: <Widget>[
								Icon(Icons.account_circle, color: Colors.white),
								SizedBox(width: 10),
								Text('Login with Google', style: TextStyle(color: Colors.white))
							],
						)
					),
					onPressed: () {
						this.userBloc.signut();
						this.userBloc.signIn();
					},	  
				),
			)
		);
  	}
}