// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sih/login.dart';
import 'package:sih/register.dart';
import 'package:sih/homepage.dart';

// void main(){
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'Register',
//     routes: {'Register':(context) => Register()},
//     // routes: {'Register':(context) => Register() , 'Login':(context) => Login()},
//   ));
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'register',
    routes: {
      'register': (context) =>const Register(),
      'login': (context) =>const Login(),
      'home': (context) =>const HomePage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
