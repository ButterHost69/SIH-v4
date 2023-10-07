import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "", pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  email=value;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password Here',
                ),
                onChanged: (value) {
                  pass = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: pass);
                    Navigator.pushNamed(context, 'home');
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No users Found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Incorrect password provided for that user.');
                    }
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),  
            ],
          ),
        ),
      ),
    );
  }
}
