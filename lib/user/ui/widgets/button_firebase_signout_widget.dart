import 'package:flutter/material.dart';
import 'package:kramo/user/bloc/user_bloc.dart';

class ButtonFirebaseSignOutWidget extends StatelessWidget {
	final UserBloc userBloc;
  	const ButtonFirebaseSignOutWidget({Key key, @required this.userBloc}) : super(key: key);

  	@override
  	Widget build(BuildContext context) {
		return Container(
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
						this.userBloc.signut();
					},	  
				),
			)
		);
    
  	}
}