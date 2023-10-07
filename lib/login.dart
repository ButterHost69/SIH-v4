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
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Pass',
                ),
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
                            email: "barry.allen@example.com",
                            password: "SuperSecretPassword!");
                    Navigator.pushNamed(context, 'home');
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                  Navigator.pushNamed(context, 'home');
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [Text('Hola '), Text('Saynara')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
