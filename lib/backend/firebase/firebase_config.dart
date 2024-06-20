import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDzA_Kfe0ABMUlttnb5OQnA5L-mtFhUL2U",
            authDomain: "to-do-7m32qp.firebaseapp.com",
            projectId: "to-do-7m32qp",
            storageBucket: "to-do-7m32qp.appspot.com",
            messagingSenderId: "124213231220",
            appId: "1:124213231220:web:63f8da38a33927a8d35b21"));
  } else {
    await Firebase.initializeApp();
  }
}
