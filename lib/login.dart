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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
      
              child: Column(
                children: [
      
                    const Text(
                      'Ecom Mart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Small Business, Big Impact',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/applogo.png'),
                    const SizedBox(
                      height: 20,
                    ),
      
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.blue, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),
                    ),
                    onChanged: (value) {
                      email=value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password Here',
                      border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.blue, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),
                    ),
                    onChanged: (value) {
                      pass = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          
                      // Login Button
                      ElevatedButton(
                       style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 35),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
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
                    
                    
                      //Register Button
                       OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 35),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: const Text("Register"),
                          ),
          
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
