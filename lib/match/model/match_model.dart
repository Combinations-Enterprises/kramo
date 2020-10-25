import 'package:flutter/widgets.dart';
import 'package:kramo/user/model/user_model.dart';

class MatchModel {
	String id;
	String name;
	UserModel player1;
	UserModel player2;

	MatchModel({
		Key key, 
		this.id,
		this.name,
		this.player1,
		this.player2
	});

}