import 'dart:async';

import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firestore.dart' as fs;

import 'package:angular/core.dart';

@Injectable()
class UsersService {
  fb.User user;

  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;

  List<String> users;

  UsersService() {
    fb.initializeApp(
        apiKey: "XXX",
        authDomain: "XXX",
        databaseURL: "XXX",
        projectId: "XXX",
        storageBucket: "XXX",
        messagingSenderId: "XXX");

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);

    fs.Firestore firestore = fb.firestore();
    fs.CollectionReference ref = firestore.collection("users");

    ref.onSnapshot.listen((querySnapshot) {
      users = new List();
      for (var doc in querySnapshot.docs) {
        users.add(doc.id);
      }
    });
  }

  void _authChanged(fb.User fbUser) {
    user = fbUser;
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    } catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }
}
