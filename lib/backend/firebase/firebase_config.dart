import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCv8F3oxNPxSf_9lBYi2nXOaQeW9WD63zc",
            authDomain: "indurama-f99b2.firebaseapp.com",
            projectId: "indurama-f99b2",
            storageBucket: "indurama-f99b2.appspot.com",
            messagingSenderId: "467233064041",
            appId: "1:467233064041:web:dac86d956a69cbdd8a8ef8",
            measurementId: "G-SEZEPDV46P"));
  } else {
    await Firebase.initializeApp();
  }
}
