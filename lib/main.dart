import 'package:flutter/material.dart';
import 'package:iceman/Models/iceshop.dart';
import 'package:provider/provider.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => IceShop(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            ));
  }
}
