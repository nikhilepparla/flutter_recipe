import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:project/stylings/themes_cooking.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = Food.dark();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const HomePage(),
    );
  }
}
