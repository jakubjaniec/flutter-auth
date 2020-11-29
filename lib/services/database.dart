import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser({uid, name}) {
    print(uid);
    return usersCollection
        .doc(uid)
        .set({
          'uid': uid,
          'name': name,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to add user: $error'));
  }

  Stream users(uid) {
    return usersCollection.doc(uid).snapshots();
  }
}
