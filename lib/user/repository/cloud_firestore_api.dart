import 'package:cloud_firestore/cloud_firestore.dart';
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


}