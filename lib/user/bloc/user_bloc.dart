import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/user/model/user_model.dart';
import 'package:kramo/user/repository/cloud_firestore_repository.dart';
import 'package:kramo/user/repository/firebase_auth_repository.dart';

class UserBloc implements Bloc{

	final _authRepository = AuthRepository();

	Stream<firebase_auth.User> streamAuthStatus = firebase_auth.FirebaseAuth.instance.authStateChanges();


	// Casos de uso
	// 1. SignIn
	Future<firebase_auth.User> signIn() { return _authRepository.signInFirebase(); }

	// 2. SignOut
	void signut(){ _authRepository.signOut(); }

	// 3. Update User
	final CloudFirestoreRepository _cloudFirestoreRepository = CloudFirestoreRepository();
	void updateUserData(UserModel user) => _cloudFirestoreRepository.updateUserData(user);

    @override
    void dispose() {
    	
  	}
}
