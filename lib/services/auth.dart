import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/models/user.dart';
import 'package:flutter_auth/services/database.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  UserModel _createUserModel(User user) {
    return _auth.currentUser != null ? UserModel(uid: user.uid) : null;
  }

  Stream<User> get authStateChanges => _auth.authStateChanges();
  Stream<UserModel> get user => authStateChanges.map(_createUserModel);

  Future<bool> signIn({String email, String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _createUserModel(_auth.currentUser);
      return true;
    } on FirebaseException catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signUp({String email, String password, String name}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _createUserModel(_auth.currentUser);
      await FirestoreService().addUser(uid: _auth.currentUser.uid, name: name);
      return true;
    } on FirebaseException catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      await _auth.signOut();
      return true;
    } on FirebaseException catch (e) {
      print(e);
      return false;
    }
  }
}
