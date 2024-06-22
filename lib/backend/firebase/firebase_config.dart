import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCg2LHkM2Jc_gcW0N24DpvyVB3YYm8Qgzc",
            authDomain: "geminit-1qy1xv.firebaseapp.com",
            projectId: "geminit-1qy1xv",
            storageBucket: "geminit-1qy1xv.appspot.com",
            messagingSenderId: "910555656483",
            appId: "1:910555656483:web:71f5b83d56a2c1e11fdc96"));
  } else {
    await Firebase.initializeApp();
  }
}
