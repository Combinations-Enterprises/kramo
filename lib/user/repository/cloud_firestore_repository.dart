import 'package:kramo/match/model/match_model.dart';
import 'package:kramo/user/model/user_model.dart';
import 'package:kramo/user/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository{
	final CloudFirestoreApi _cloudFirestoreApi = CloudFirestoreApi();

	// Users 
	void updateUserData(UserModel user) => _cloudFirestoreApi.updateUserData(user);

	// Matches
  	void createMatch(MatchModel match) => _cloudFirestoreApi.createMatch(match);
}