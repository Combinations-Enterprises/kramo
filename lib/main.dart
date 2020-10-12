import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/User/ui/screen/login_screen.dart';
import 'package:kramo/routes/routes.dart';
import 'package:kramo/user/bloc/user_bloc.dart';


void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp();
	runApp(MyApp());
} 



class MyApp extends StatelessWidget {
  	// This widget is the root of your application.

	@override
	Widget build(BuildContext context) {
		return BlocProvider(
			child: MaterialApp(
				routes: ApplicationRoutes.getApplicationRoutes(),
				debugShowCheckedModeBanner: false,
          		title: 'Flutter Demo',
          		home: LoginScreen(),
        	),
			bloc: UserBloc()
		);
	}
}