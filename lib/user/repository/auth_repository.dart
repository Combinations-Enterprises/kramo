
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:kramo/user/repository/firebase_auth_api.dart';

class AuthRepository{
	final _firebaseAuthAPI = FirebaseAuthAPI();

	Future<firebase_auth.User> signInFirebase(){
		return _firebaseAuthAPI.signIn();
	}

	signOut() => _firebaseAuthAPI.signOut();
}