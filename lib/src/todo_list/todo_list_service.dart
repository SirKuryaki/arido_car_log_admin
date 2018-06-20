import 'dart:async';

import 'package:firebase/firebase.dart' as fb;

import 'package:angular/core.dart';

@Injectable()
class TodoListService {
  List<String> mockTodoList = <String>[];

  Future<List<String>> getTodoList() async => mockTodoList;

  fb.User user;

  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;

  TodoListService(){
    fb.initializeApp(
          apiKey:"XXX",
          authDomain: "XXX",
          databaseURL: "XXX",
          projectId: "XXX",
          storageBucket: "XXX",
          messagingSenderId: "XXX");

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);
  }

  void _authChanged(fb.User fbUser) {
    user = fbUser;
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    }
    catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }
}
