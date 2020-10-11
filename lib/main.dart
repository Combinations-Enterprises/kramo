import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kramo/src/pages/login_page.dart';
import 'package:kramo/src/pages/signup_page.dart';
import 'package:kramo/src/routes/routes.dart';

void main() {
  	runApp(MyApp());
}

class MyApp extends StatelessWidget {
  	// This widget is the root of your application.
  	@override
  	Widget build(BuildContext context) {
    	return MaterialApp(
			debugShowCheckedModeBanner: false,
      		title: 'Flutter Demo',
			routes: ApplicationRoutes.getApplicationRoutes(),
      		theme: ThemeData(
				primarySwatch: Colors.blue,
				visualDensity: VisualDensity.adaptivePlatformDensity,
				
      		),
      		home: MyHomePage(title: 'Kramo'),
    	);
  	}
}

class MyHomePage extends StatefulWidget {
  	MyHomePage({Key key, this.title}) : super(key: key);

  	final String title;

  	@override
  	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
      		appBar: AppBar(title: Text(widget.title),),
      		body: Center(	
        		child: Column(
          			mainAxisAlignment: MainAxisAlignment.center,
          			children: <Widget>[
						//_textFromFirebase(),
						RaisedButton(
							child: Text('Iniciar sesión'),
							onPressed: (){
								Navigator.pushNamed(context, LoginPage.routeName);
							},
						),
						RaisedButton(
							child: Text('Crear cuenta'),
							onPressed: (){
								Navigator.pushNamed(context, SignupPage.routeName);
							},
						),
            			
          			],
        		),
      		),
    	);
  	}
	
	/*Widget _textFromFirebase() {
		return StreamBuilder(
			stream: Firestore.instance.collection('kramodev').document('quick').snapshots(),
			builder: (context, snapshot){
				if (snapshot.hasData){
					var doc = snapshot.data;
					if(doc.exists){
						return Text(doc['content']);
					} else{
						return Text('Error');
					}
				}
				return Center(
					child: CircularProgressIndicator(),
				);
			},
		);
	}*/
}
