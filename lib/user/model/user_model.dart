import 'package:flutter/material.dart';

class UserModel {
	String id;
	String name;
	String email;
	String photoUrl;
  	String userName;
	List<Match> matches;

	UserModel({
		Key key,
		@required this.id,
		@required this.name,
		@required this.email,
		@required this.photoUrl,
		this.userName,
		this.matches
	});
}