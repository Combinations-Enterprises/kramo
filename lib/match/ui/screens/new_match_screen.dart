import 'package:flutter/material.dart';

class NewMatchScreen extends StatefulWidget {
	static String screenName = "new_match_screen";
    @override
  	_NewMatchScreenState createState() => _NewMatchScreenState();
}

class _NewMatchScreenState extends State<NewMatchScreen> {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,	
				children: [
					Text("New Match Screen")
				],
			)
		);
  	}
}