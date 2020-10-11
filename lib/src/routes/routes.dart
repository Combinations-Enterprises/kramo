import 'package:flutter/material.dart';
import 'package:kramo/src/pages/login_page.dart';
import 'package:kramo/src/pages/signup_page.dart';


class ApplicationRoutes {
	static Map<String, WidgetBuilder> getApplicationRoutes(){
		return <String, WidgetBuilder> {
      LoginPage.routeName : (BuildContext context) => LoginPage(),
			SignupPage.routeName : (BuildContext context) => SignupPage(),
      
		};
	}
}