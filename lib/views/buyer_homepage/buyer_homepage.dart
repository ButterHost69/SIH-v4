import 'package:flutter/material.dart';
import 'package:sih/logic/buyer/cart/cart.dart';
import 'package:sih/logic/buyer/home/home.dart';
import 'package:sih/logic/buyer/profile/profile.dart';
import 'package:sih/logic/buyer/categories/categories.dart';
import 'package:sih/logic/buyer/message/message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;
  String titl = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(titl),
      ),
      body: index == 0
          ? const Profile()
          : index == 1
              ? const Cart()
              : index == 2
                  ? const Home()
                  : index == 3
                      ? const Categories()
                      : const Message(),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(
            // color: Colors.white
            ),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Profile',
            icon: Icon(Icons.person_2_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Categories',
            icon: Icon(Icons.card_travel),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Chat',
            icon: Icon(Icons.message_outlined),
          ),
        ],
        currentIndex: index,
        onTap: (int ind) {
          setState(() {
            index = ind;
            if (index == 0) {
              titl = "Profile";
            } else if (index == 1) {
              titl = "Cart";
            } else if (index == 2) {
              titl = "Home";
            } else if (index == 3) {
              titl = "Categories";
            } else {
              titl = "Message";
            }
          });
        },
      ),
    );
  }
}
