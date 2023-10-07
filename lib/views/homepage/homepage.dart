import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: index == 0
          ? const SizedBox(
              child: Text('Profile'),
            )
          : index == 1
              ? Container(
                  child: const Text('Cart'),
                )
              : index == 2
                  ? Container(
                      child: const Text('Home'),
                    )
                  : Container(child: const Text('Message')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_2_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.message_outlined),
          ),
        ],
        onTap: (int ind) {
          setState(() {
            index = ind;
          });
        },
      ),
    );
  }
}
