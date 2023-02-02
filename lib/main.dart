import 'package:flutter/material.dart';
import 'package:st_store/Pages/cart.dart';
import 'package:st_store/Pages/home_page.dart';
import 'package:st_store/Pages/single_product.dart';

import 'Pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddToCart(),
    );
  }
}
