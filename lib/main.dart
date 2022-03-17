import 'package:flutter/material.dart';

import 'package:shop_food/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopeeFood',
      theme: ThemeData(fontFamily: 'roboto'),
      home: const Registrasi(),
    );
  }
}
