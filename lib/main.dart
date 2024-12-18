import 'package:flutter/material.dart';
import 'package:internship_test/home_page.dart';

void main() {
  runApp(const CartridgeKingsApp());
}

class CartridgeKingsApp extends StatelessWidget {
  const CartridgeKingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cartridge Kings',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CartridgeKingsHomePage(),
    );
  }
}
