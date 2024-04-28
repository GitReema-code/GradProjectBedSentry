import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAnJ_bOzZScGFKSi78q-aQbD6pT3gIBYlk",
            authDomain: "bedsentry-6c705.firebaseapp.com",
            projectId: "bedsentry-6c705",
            storageBucket: "bedsentry-6c705.appspot.com",
            messagingSenderId: "760794258698",
            appId: "1:760794258698:web:6683aa01a808227434eef3"));
  } else {
    await Firebase.initializeApp();
  }
}
