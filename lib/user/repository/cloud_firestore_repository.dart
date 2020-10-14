import 'package:kramo/user/model/user_model.dart';
import 'package:kramo/user/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository{
	final CloudFirestoreApi _cloudFirestoreApi = CloudFirestoreApi();

	void updateUserData(UserModel user) => _cloudFirestoreApi.updateUserData(user);
}