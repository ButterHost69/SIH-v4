import 'package:flutter/material.dart';
import 'package:sih/logic/seller/add_products/add_products.dart';
import 'package:sih/logic/seller/profile/seller_profile.dart';
import 'package:sih/logic/seller/message/seller_message.dart';
import 'package:sih/logic/seller/view_orders/view_orders.dart';

class SellerHomePage extends StatefulWidget {
  const SellerHomePage({super.key});

  @override
  State<SellerHomePage> createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
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
              ? const AddProducts()
              : index == 2
                  ? const ViewOrders()
                  : const SellerMessage(),
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
            label: 'Products',
            icon: Icon(Icons.add_shopping_cart),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: 'Orders',
            icon: Icon(Icons.list),
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
