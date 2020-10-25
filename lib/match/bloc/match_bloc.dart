import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:kramo/match/model/match_model.dart';
import 'package:kramo/user/repository/cloud_firestore_repository.dart';

class MatchBloc implements Bloc {
  	
	final CloudFirestoreRepository _cloudFirestoreRepository = CloudFirestoreRepository();

	void createMatch(MatchModel match) => _cloudFirestoreRepository.createMatch(match);
	  
	@override
    void dispose() {}
}