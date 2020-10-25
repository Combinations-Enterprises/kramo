import 'package:flutter/material.dart';
import 'package:kramo/match/ui/screens/new_match_screen.dart';

class ApplicationRoutes {
	static Map<String, WidgetBuilder> getApplicationRoutes(){
		return <String, WidgetBuilder> {
			NewMatchScreen.screenName   : (BuildContext context)  => NewMatchScreen(),
		};
	}
}