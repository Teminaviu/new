import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfgwqHY05g7BRz4-1j4xNzHcu_pZFLPnk",
            authDomain: "morestarts-327be.firebaseapp.com",
            projectId: "morestarts-327be",
            storageBucket: "morestarts-327be.appspot.com",
            messagingSenderId: "390090135492",
            appId: "1:390090135492:web:245d14b8fe0700158bb691",
            measurementId: "G-PFTWZSWXBY"));
  } else {
    await Firebase.initializeApp();
  }
}
