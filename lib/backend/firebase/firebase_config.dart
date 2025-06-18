import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCfFE6MLujr5EHnHQTmNkuGgvHHH67cnE4",
            authDomain: "novarasocial-dev.firebaseapp.com",
            projectId: "novarasocial-dev",
            storageBucket: "novarasocial-dev.firebasestorage.app",
            messagingSenderId: "546085339610",
            appId: "1:546085339610:web:3acb1fcad9b37da633c0e3"));
  } else {
    await Firebase.initializeApp();
  }
}
