import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kramo/match/model/match_model.dart';
import 'package:kramo/user/model/user_model.dart';

class CloudFirestoreApi {
	final String collectionUsers = 'users';
	final String collectionMatches = "matches";

	final FirebaseFirestore _firestore = FirebaseFirestore.instance;

	void updateUserData(UserModel user) async {
		DocumentReference reference = _firestore.collection(collectionUsers).doc(user.id);
		return reference.set({
			"id": user.id,
			"name": user.name,
			"email": user.email,
			"photoUrl": user.photoUrl,
			"matches": user.matches,
			"updated": DateTime.now()
		});
	}


	void createMatch(MatchModel match) async {


		Map<String, String> userData = {
  			'player1': "users/${firebase_auth.FirebaseAuth.instance.currentUser.uid}/"
		};


		DocumentReference reference = await _firestore.collection(collectionMatches).add({
			"name": "Nueva partida",
			"player1": _firestore.collection(collectionUsers).doc(firebase_auth.FirebaseAuth.instance.currentUser.uid),
		});

		
	}
}