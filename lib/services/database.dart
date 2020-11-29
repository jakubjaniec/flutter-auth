import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // FirebaseFirestore _db = FirebaseFirestore.instance;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser({uid, name}) {
    return users
        .doc(uid)
        .set({
          'uid': uid,
          'name': name,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to add user: $error'));
  }
}
