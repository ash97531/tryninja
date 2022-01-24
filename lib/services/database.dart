import 'package:brew_crew/models/brew.dart';
import 'package:brew_crew/models/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  // Collection reference
  final CollectionReference brewCollection =
      FirebaseFirestore.instance.collection('brews');

  Future updateUserData(String sugars, String name, int strength) async {
    return await brewCollection.doc(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  // usermodel data from snapshot
  UserData _userDataFromSnapShot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      sugars: snapshot.get('sugars'),
      name: snapshot.get('name'),
      strength: snapshot.get('strength'),
    );
  }

  // get user doc
  Stream<UserData> get userData =>
      brewCollection.doc(uid).snapshots().map(_userDataFromSnapShot);

  // brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) =>
      snapshot.docs.map((doc) {
        return Brew(
          name: doc['name'] ?? '',
          strength: doc['strength'] ?? 0,
          sugars: doc['sugars'] ?? '0',
        );
      }).toList();

  // get brews stream
  Stream<List<Brew>> get brews =>
      brewCollection.snapshots().map(_brewListFromSnapshot);
}
