import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQ0mLU4uI8CaoEuS-Y7dZsBvhblJc8NY0",
            authDomain: "miprimerapp-c0dac.firebaseapp.com",
            projectId: "miprimerapp-c0dac",
            storageBucket: "miprimerapp-c0dac.appspot.com",
            messagingSenderId: "744371166972",
            appId: "1:744371166972:web:82be65671f6b4cb2d88179"));
  } else {
    await Firebase.initializeApp();
  }
}
