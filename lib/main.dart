import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:souk_app/views/cart_page.dart';
import 'package:souk_app/views/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:souk_app/controllers/main_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MainController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "shopping App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}
