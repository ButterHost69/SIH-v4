import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, 'home');
                  });
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
