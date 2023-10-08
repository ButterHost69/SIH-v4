import 'package:flutter/material.dart';

class SellerMessage extends StatefulWidget {
  const SellerMessage({super.key});

  @override
  State<SellerMessage> createState() => _SellerMessageState();
}

class _SellerMessageState extends State<SellerMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Seller Message'),
      ),
    );
  }
}
