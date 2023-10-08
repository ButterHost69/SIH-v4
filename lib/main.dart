// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sih/login.dart';
import 'package:sih/register.dart';
import 'package:sih/views/buyer_homepage/buyer_homepage.dart';
import 'package:sih/views/seller_homepage/seller_homepage.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Initialising Firebase
  _initFirebase();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'register': (context) => const Register(),
      'login': (context) => const Login(),
      'home': (context) => const HomePage(),
      'sellerhome': (context) => const SellerHomePage(),
    },
  ));
}

_initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
