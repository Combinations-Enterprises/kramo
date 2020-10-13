import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  	const UserProfileWidget({Key key}) : super(key: key);

  	@override
  	Widget build(BuildContext context) {
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
							image: NetworkImage(firebase_auth.FirebaseAuth.instance.currentUser.photoURL)
						)
					)
				),
				Text(firebase_auth.FirebaseAuth.instance.currentUser.displayName, style: TextStyle(color: Colors.black),),
				Text(firebase_auth.FirebaseAuth.instance.currentUser.email, style: TextStyle(color: Colors.black),)
			],
		);
  	}


	
}