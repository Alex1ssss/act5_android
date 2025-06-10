import 'package:flutter/material.dart';
import 'package:myapp/notes.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBQCO8e5tZNUFg9nOY52PDNP9-DhjVJDPI", 
      appId: "1:866505323134:android:e0dac6b46ad9d00da41e2f", 
      messagingSenderId: "866505323134", 
      projectId: "notesapp-ac47a")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NoteScreen());
  }
}