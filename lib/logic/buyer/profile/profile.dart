import 'package:flutter/material.dart';
import 'package:sih/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String temp = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                  'https://imgs.search.brave.com/V7zk0XVrj0PKZG2Ry7S1DPiYHhCKDkwi4EugfQH8u_o/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdDIu/ZGVwb3NpdHBob3Rv/cy5jb20vMTEwNDUx/Ny8xMTk2NS92LzYw/MC9kZXBvc2l0cGhv/dG9zXzExOTY1OTA5/Mi1zdG9jay1pbGx1/c3RyYXRpb24tbWFs/ZS1hdmF0YXItcHJv/ZmlsZS1waWN0dXJl/LXZlY3Rvci5qcGc'),
              width: 150,
              height: 150,
            ),
            const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, 'login');
                });
              },
              child: const Text('Log Out'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'sellerhome');
              },
              child: const Text('Seller'),
            ),
          ],
        ),
      ),
    );
  }
}
