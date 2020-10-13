

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/user/repository/auth_repository.dart';

class UserBloc implements Bloc{

	final _authRepository = AuthRepository();

	Stream<firebase_auth.User> streamFirebase = firebase_auth.FirebaseAuth.instance.authStateChanges();
	Stream<firebase_auth.User> get authStatus => streamFirebase;

	Future<firebase_auth.User> signIn() {
		return _authRepository.signInFirebase();
	}


	signut(){
		_authRepository.signOut();
	}

    @override
    void dispose() {
    	
  	}
}